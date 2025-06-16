import os
import re
import json
import csv
from datetime import datetime
from config import CONFIG

def extract_number(filename):
    """Извлекает числовой префикс из имени файла для правильной сортировки"""
    try:
        return int(filename.split(' ', 1)[0])
    except ValueError:
        return float('inf')  # Если нет номера — ставим в конец

def matches_ic_pattern(value, pattern):
    """Проверяет соответствие строки регулярному выражению"""
    try:
        return re.fullmatch(pattern, value) is not None
    except re.error:
        return False

def replace_placeholders(template, replacements):
    """Заменяет все шаблоны вида {{key}} на значения из словаря"""
    for key, value in replacements.items():
        template = template.replace("{{" + key + "}}", str(value))
    return template

def save_filled_test(output_folder, ic_value, filled_content, norm_name='',temperature='', ufp=''):
    """Сохраняет объединённый контент в файл с именем из IC"""
    new_path = f"{output_folder}/{norm_name}";
    output_folder = new_path
    os.makedirs(output_folder, exist_ok=True)
    output_path = os.path.join(output_folder, f"{ic_value}{norm_name}{temperature}{ufp}.tpl")
    with open(output_path, 'w') as f:
        f.write(filled_content)
    print(f"✅ Сохранено: {output_path}")

def extract_er_en(full_string):
    match = re.fullmatch('^1395(ЕР|ЕН)(\\d{2}[АБВГДЕЖИК]?)$', full_string)
    if match:
        return match.group(1)
    else:
        return None

def get_mode_match(modes, ic_value, norm_type):
    for mode in modes:
        if matches_ic_pattern(ic_value, mode['mode_ic']):
            if 'mode_norm' in mode and not matches_ic_pattern(norm_type, mode['mode_norm']):
                continue
            return mode
    return {}
       
def get_norm_match(norms, ic_value, norm_type):
    for norm in norms:
        if matches_ic_pattern(ic_value, norm['norm_ic']):
            return norm.get(norm_type, ['', ''])
    return ['', '']

def get_user_vars(name_test, mode_value, fUserVar1):
    Uin = mode_value.get('IN', ['', ''])[0]

    match name_test:
        case "Ku":
                fUserVar2 = fUserVar1
                fUserVar1 = Uin + fUserVar1
                return [fUserVar1, fUserVar2]
        case "Uпд_min":
                fUserVar2 = Uin - 1.3
                return [fUserVar1, fUserVar2]
        case _:
                return [fUserVar1, None]
        
def process_test_json(file_path, ic_value, test_index, norm_type='mzu', temperature='+25', type_mic=''):
    """Обрабатывает JSON-файл и возвращает заполненный шаблон из Param"""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)

        if 'ic' in data and matches_ic_pattern(ic_value, data['ic']):

            mode_norm = data.get('modes', [{}])[0].get('mode_norm', ['', ''])
            modes = data.get('modes', [{}])
            powerSupplyCurrent = data.get('powerSupplyCurrent', ['', ''])
            load_current_data = data.get('loadCurrent',[{}])

            load_current = 0
            load_current_match = {}
            powerSupplyCurrent_value=None
            fpowerSupplyCurrent = 0

            if load_current_data and not (len(load_current_data) == 1 and load_current_data[0] == {}):
               load_current_match = get_mode_match(load_current_data, ic_value, norm_type)   

            match_mode = {}
            match_mode =  get_mode_match(modes, ic_value, norm_type)   

            norms = data.get('norms', [{}])
            norm_value = get_norm_match(norms, ic_value, norm_type)
            
            if powerSupplyCurrent != ['', '']:
                powerSupplyCurrent_value = get_mode_match(powerSupplyCurrent, ic_value, norm_type)

            if powerSupplyCurrent_value != None:
                fpowerSupplyCurrent = convert_to_ampere(powerSupplyCurrent_value.get('fPowerSupplyCurrent',['',''])[0],powerSupplyCurrent_value.get('fPowerSupplyCurrent',['',''])[1])

            mode_value = match_mode

            if norm_type=='ceh' or norm_type=='kontr' or norm_type=='sdat':
                norm_value = norm_value.get(temperature, ['', ''])

            mode_norm = match_mode.get('mode_norm')

            if  mode_norm != None:
                if matches_ic_pattern(mode_norm, norm_type): #"mode_norm": "ceh|kontr|sdat"
                    mode_value = match_mode
            
            #проверка норм
            if (norm_value[0] == None) and (norm_value[1] == None):
                return #пропускаем 

            if (norm_value[0] == None) and (norm_value[1] != None):
                norm_value[0] = 0 #-9999
            
            if (norm_value[0] != None) and (norm_value[1] == None):
                norm_value[1] = 2 #9999

            fUserVar1 = convert_to_ampere(mode_value.get('dI', ['', ''])[0], mode_value.get('dI', ['', ''])[1]) or mode_value.get('dU', ['', ''])[0]

            fTypeTest = data.get('type_test', ['', ''])[0 if type_mic == 'ЕР' else 1]

            load_current = convert_to_ampere(load_current_match.get('fLoadCurrent',['',''])[0],load_current_match.get('fLoadCurrent',['',''])[1])

            name_test = data.get('short', '')

            user_vars = [fUserVar1,None]
            user_vars = get_user_vars(name_test, mode_value, fUserVar1)

            #заполняем шаблон
            replacements = {
                'fName': data.get('name', ''),
                'fShortName': data.get('short', ''),
                'fLO': norm_value[0],
                'fLo': norm_value[0],
                'fHi': norm_value[1],
                'fTypeTest' : fTypeTest,
                'fIN_mA': convert_to_ampere(mode_value.get('IN', ['', ''])[0], mode_value.get('IN', ['', ''])[1]),
                'fOUT_mA': convert_to_ampere(mode_value.get('OUT', ['', ''])[0], mode_value.get('OUT', ['', ''])[1]),
                "fADJ_mA": convert_to_ampere(mode_value.get('ADJ/SENS', ['', ''])[0], mode_value.get('ADJ/SENS', ['', ''])[1]),
                "fEN_mA": convert_to_ampere(mode_value.get('EN', ['', ''])[0], mode_value.get('EN', ['', ''])[1]),
                "fIN_V": convert_to_ampere(mode_value.get('IN', ['', ''])[0], mode_value.get('IN', ['', ''])[1]),
                "fOUT_A": convert_to_ampere(mode_value.get('OUT', ['', ''])[0], mode_value.get('OUT', ['', ''])[1]),
                "fEN_V": convert_to_ampere(mode_value.get('EN', ['', ''])[0], mode_value.get('EN', ['', ''])[1]),
                "fUserVar1": user_vars[0],
                "fUserVar2": user_vars[1],
                'fIndex': str(test_index),
                'fLoadCurrent':str(load_current),
                "fPowerSupplyCurrent":fpowerSupplyCurrent,
            }

            test_name = os.path.splitext(os.path.basename(file_path))[0]
            param_file = os.path.join(CONFIG['param_folder'], test_name + ".txt")

            if os.path.exists(param_file):
                with open(param_file, 'r', encoding='utf-8') as pf:
                    content = pf.read()

                filled_content = replace_placeholders(content, replacements)
                return filled_content
            else:
                print(f"❌ Не найден файл в Param: {param_file}")
    except Exception as e:
        print(f"❌ Ошибка при обработке {file_path}: {e}")
    return None

def convert_to_ampere(value, unit):
    """
    Переводит значение в Амперы (А), в зависимости от единицы измерения.
    
    :param value: числовое значение (может быть строкой или числом)
    :param unit: единица измерения ('А', 'мА', 'мкА')
    :return: значение в амперах (float)
    """
    # Пробуем привести значение к float
    try:
        numeric_value = float(value)
    except (TypeError, ValueError):
        return 0.0  # Если не число — возвращаем 0.0

    # Переводим в амперы
    if unit == "мА":
        return abs(numeric_value / 1000)
    elif unit == "мкА":
        return abs(numeric_value / 1_000_000)
    elif unit == "А":
        return abs(numeric_value)
    else:
        return numeric_value  # Неизвестная единица — возвращаем как есть
    
def get_context_common_file():
    common_sec_file = os.path.join(CONFIG['param_folder'], CONFIG['common_file'])
    # Читаем содержимое Common.sec, если файл существует
    common_content = ""
    if os.path.exists(common_sec_file):
        try:
            with open(common_sec_file, 'r', encoding='utf-8') as f:
                common_content = f.read()
        except Exception as e:
                print(f"❌ Ошибка при чтении Common.sec: {e}")
        return common_content
    else:
        print("❌ Common.sec не найден — пропускаем вставку") 
        return ""
    
def get_type_microshema(ic_name):
    return extract_er_en(ic_name)


def clean_string(s):
    if isinstance(s, str):
        # Заменяем неразрывные пробелы (\xa0) и другие спецсимволы на обычный пробел
        s = re.sub(r'[\u00A0\uFEFF]', ' ', s)
        # Убираем лишние пробелы
        s = re.sub(r'\s+', ' ', s).strip()
    return s

def find_ufp_by_code_and_temp(csv_file, target_code, target_temp):
    with open(csv_file, encoding='utf-8') as f:
        reader = csv.reader(f, delimiter=';')

        for row in reader:
            code, temp, ufp = row

            code = clean_string(code)
            temp = clean_string(temp)
            ufp = clean_string(ufp)

            # Игнорируем пустые коды
            if not code.strip():
                continue

            # Сравниваем без учёта регистра
            if target_code.lower() in code.lower() and target_temp.lower() in temp.lower():
                return ufp

    return None

def main():
    try:
        # Получаем текущую дату и время
        now = datetime.now()
        output_folder = now.strftime("%d_%m_%Y %H_%M_%S")
        
        folder_csv = CONFIG['cipher_folder']    

        count_no_ufp = 0

        for temp in CONFIG['temperatures']:
            for norm_name in CONFIG['norm_texts']:
                norm = CONFIG['norm_mapping'][norm_name]

                if (norm == 'mzu' or norm_name=='2 Классификация') and temp != '+25':
                    continue # для mzu обрабатываем только +25
                     
                with open(CONFIG['ic_file'], 'r') as f:
                    for line in f:
                        ic_value = line.strip()
                        if not ic_value:
                            continue

                        print(f"\n🔍 Обработка идентификатора: {ic_value}")

                        all_filled_content = ""
                        test_index = 1  # Начинаем нумерацию тестов с 1

                        type_mic = get_type_microshema(ic_value)

                        # Получаем список JSON-файлов и сортируем их по числовому префиксу
                        raw_files = os.listdir(CONFIG['test_folder'])
                        sorted_files = sorted(raw_files, key=extract_number)

                        for filename in sorted_files:
                            if filename.lower().endswith('.json'):
                                file_path = os.path.join(CONFIG['test_folder'], filename)
                                
                                number_test = extract_number(filename)

                                if (norm_name == '2 Классификация') and (number_test in CONFIG['number_diagnostic_test']):
                                    continue #Диагностические тесты пропускаем для 2 Классификации
                                
                                filled_content = process_test_json(file_path, ic_value, test_index, norm, temp, type_mic)
                                if filled_content:
                                    all_filled_content += filled_content + "\n\n"
                                    test_index += 1  # Увеличиваем только при успехе

                        # Сохраняем объединённый результат
                        if all_filled_content.strip():
                            common_context = get_context_common_file()
                            
                            fTemp = temp
                            if norm == 'mzu' or norm_name=='2 Классификация':
                                fTemp=''

                            target_code = ic_value
                            target_temp = fTemp

                            file_csv = folder_csv + "/" + norm_name + ".csv"
                            ufp = None
                            if  os.path.exists(file_csv):
                                ufp = find_ufp_by_code_and_temp(file_csv, target_code, target_temp)

                            if ufp == None:
                                ufp = ""
                                count_no_ufp += 1

                            replacements = {
                             'fTemp': fTemp, 
                             'fIC': ic_value, 
                             'fClass': norm_name,
                             'fUFP': ufp
                             }
                            
                            commot_fixed = replace_placeholders(common_context, replacements)
                            save_filled_test(output_folder, ic_value, f"{commot_fixed}\n\n{all_filled_content}",f" {norm_name}", '' if fTemp == '' else f" {fTemp}", '' if ufp == '' else f" {ufp}")
                        else:
                            print(f"❌ Нет данных для записи для {ic_value} {norm_name} {fTemp}")
        
        print(f"{count_no_ufp} без шифров")

    except FileNotFoundError:
        print(f"❌ Файл {CONFIG['ic_file']} не найден.")

if __name__ == '__main__':
    main()
