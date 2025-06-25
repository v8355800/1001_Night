/* ОПИСАНИЕ ПЕРЕМЕННЫХ */

/* Дискретные выходы модуля управления (МУ):
*
* MU_OUT_OFF;
* MU_OUT0;   MU_OUT1;   MU_OUT2;   MU_OUT3;
* MU_OUT4;   MU_OUT5;   MU_OUT6;   MU_OUT7;
* MU_OUT8;   MU_OUT9;   MU_OUT10;  MU_OUT11;
* MU_OUT12;  MU_OUT13;  MU_OUT14;  MU_OUT15.
*/

/* Дискретные входы модуля управления (МУ):
*
* MU_IN0;  MU_IN1;  MU_IN2;  MU_IN3;
* MU_IN4;  MU_IN5;  MU_IN6;  MU_IN7.
*/

/* Выходы модуля комутации реле (МКР):
*
* KR_OUT_OFF
* KR_OUT0;   KR_OUT1;   KR_OUT2;   KR_OUT3;
* KR_OUT4;   KR_OUT5;   KR_OUT6;   KR_OUT7;
* KR_OUT8;   KR_OUT9;   KR_OUT10;  KR_OUT11;
* KR_OUT12;  KR_OUT13;  KR_OUT14;  KR_OUT15;
* KR_OUT16;  KR_OUT17;  KR_OUT18;  KR_OUT19;
* KR_OUT20;  KR_OUT21;  KR_OUT22;  KR_OUT23;
* KR_OUT24;  KR_OUT25;  KR_OUT26;  KR_OUT27;
* KR_OUT28;  KR_OUT29;  KR_OUT30;  KR_OUT31.
*/

/* Реле Узла коммутации:
*
* UK_RELE_PWR - подключает источник питания (IN);
* UK_RELE_GND - подключает землю микросхемы (GND);
* 
* UK_RELE_CAP_OUT - подключает конденсатор к выходу (OUT);
* UK_RELE_CAP_IN  - подключает конденсатор ко входу (IN);
* 
* UK_RELE_ADJ_TO_OUT    - подключает (ADJ) к (OUT);
* UK_RELE_ADJ_UP_R205   - подключает (ADJ) к (OUT) через резистор 205 кОм;
* UK_RELE_ADJ_DOWN_R125 - подключает (ADJ) к (GND) через резистор 125 кОм;
* 
* UK_RELE_OUT_TO_GND_KZ_PLUS  - подключает (OUT) к (GND) (для микросхем с положительным выходом);
* UK_RELE_OUT_TO_GND_KZ_MINUS - подключает (OUT) к (GND) (для микросхем с отрицательным выходом);
* UK_RELE_ENABLE_KZ_PLUS  - выполняет КЗ (для микросхем с положительным выходом);
* UK_RELE_ENABLE_KZ_MINUS - выполняет КЗ (для микросхем с отрицательным выходом);
* 
* UK_RELE_FTNCH1_TO_IN  - подключает FTN_CH1 к (IN);
* UK_RELE_FTNCH1_TO_ADJ - подключает FTN_CH1 к (ADJ);
* UK_RELE_FTNCH2_TO_OUT - подключает FTN_CH2 к (OUT);
* UK_RELE_FTNCH2_TO_EN  - подключает FTN_CH2 к (EN);
* 
* UK_RELE_MICH1_TO_IGND   - подключает MI_CH1 для измерения IGND;
* UK_RELE_SHUNT_TO_IGND   - подключает шунт для измерения IGND;
* UK_RELE_SHUNT_IGND_200M - подключает шунт 200 мА для измерения IGND;
* UK_RELE_SHUNT_IGND_10M  - подключает шунт 10 мА для измерения IGND;
* UK_RELE_SHUNT_IGND_100U - подключает шунт 100 мкА для измерения IGND;
* UK_RELE_BURN0 - пережог перемычки 0;
* UK_RELE_BURN1 - пережог перемычки 1;
* UK_RELE_BURN2 - пережог перемычки 2;
* UK_RELE_BURN3 - пережог перемычки 3;
* UK_RELE_BURN4 - пережог перемычки 4;
* UK_RELE_BURN5 - пережог перемычки 5.
*/

/* Реле модуля формирования тестовых напряжений (МФТН):
*
* FTN_RELE_OFF   - выключает все реле;
* FTN_RELE_MEAS  - подключает измеритель напряжения;
* FTN_RELE_SHUNT - подключает шунт 10 мА;
* FTN_RELE_OUT   - подключает выход.
*/

/* Каналы модуля формирования тестовых напряжений (МФТН):
*
* FTN_CH1 - канал 1;  FTN_CH2 - канал 2.
*/

/* Комутация каналов модуля формирования тестовых напряжений (МФТН):
* FTN_CH_TO_IN  - подключает канал FTN к (IN);
* FTN_CH_TO_ADJ - подключает канал FTN к (ADJ);
* FTN_CH_TO_OUT - подключает канал FTN к (OUT);
* FTN_CH_TO_EN  - подключает канал FTN к (EN).
*/

/* Реле модуля формирования напряжения питания (МФНП):
*
* IP_RELE_OFF  - выключает все реле;
* IP_RELE_MEAS - подключает измеритель напряжения;
* IP_RELE_OUT  - подключает выход.
*/

/* Реле модуля электронной нагрузки (МЭН):
*
* EN_RELE_OFF  - выключает все реле;
* EN_RELE_MEAS - подключает измеритель напряжения;
* EN_RELE_OUT  - подключает выход.
*/

/* Реле модуля измерителя (МИ):
*
* MI_RELE_OFF   - выключает все реле;
* MI_RELE_MEAS1 - подключает измеритель напряжения канала 1;
* MI_RELE_MEAS2 - подключает измеритель напряжения канала 2;
* MI_RELE_MEAS3 - подключает измеритель напряжения канала 3;
* MI_RELE_IGND  - подключает измеритель тока IGND.
*/

/* Каналы модуля измерителя (МИ):
*
* MI_CH1 - канал 1 (до 1.0 В);
* MI_CH2 - канал 2 (до 2.25 В);
* MI_CH3 - канал 3 (до 32.0 В).
*/

/* Результат теста:
*
* RET_FAIL - результат Брак;
* RET_OK   - результат Годен;
* RET_OK_A - результат Годен А;  RET_OK_B - результат Годен Б;
* RET_OK_C - результат Годен В;  RET_OK_D - результат Годен Г;
* RET_OK_E - результат Годен Д;  RET_OK_F - результат Годен Е;
* RET_OK_G - результат Годен Ж.
*/

/* Глобальные параметры и переменные:
*
* typeTest           - (unsigned int) определеляет номер алгоритма тест-программы;
*
* measTime           - (unsigned int) определяет время измерения параметра теста (не воздействия);
*
* powerSupplyVoltage - (float) напряжение МФНП, подключен к (IN) (от -30.0 до 30.0 В);
* powerSupplyCurrent - (float) ток ограничения (МФНП), подключен к (IN) (до 6.0 А);
* powerSupplyTimeRF  - (unsigned int) время нарастания/спада напряжения (МФНП),
                                      подключен к (IN) (от 0 до 1000 мс);
*
* lowSupplyVoltage   - (float) напряжение активного канала (МФТН) (от -25.0 до 25.0 В);
* lowSupplyCurrent   - (float) ток ограничения активного канала МФТН (до 10.0 мА);
* lowSupplyChannel   - (unsigned int) активный канал МФТН (1, 2);
*
* loadCurrent        - (float) ток нагрузки МЭН, подключен к (OUT) (от -1.5 до 1.5 A);
*
* minTest            - (float) минимальный порог теста;
* maxTest            - (float) максимальный порог теста;
*
* userVar1  userVar2  userVar3  userVar4  userVar5 - (float) пользовательские переменные;
*
* result - переменная в которую должен помещаться результат выполнения теста.
*/

/* НАЧАЛО АЛГОРИТМА ТЕСТ-ПРОГРАММЫ */

function main() {
    switch (typeTest) {
        case 1: // KontOUTtoIn
        {
            /* Собрать схему */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_FTNCH2_TO_OUT|UK_RELE_FTNCH1_TO_IN);
            /* Установить реле МФТН */
            ApiDriver.FTN_SetRele(FTN_CH_TO_IN, FTN_RELE_OUT|FTN_RELE_MEAS);
            ApiDriver.FTN_SetRele(lowSupplyChannel, FTN_RELE_OUT|FTN_RELE_MEAS);
            /* Подождать включения реле */
            ApiDriver.delayms(15);
            /* Установить параметры МФТН */
            ApiDriver.FTN_SetParameters(FTN_CH_TO_IN, 0, userVar1);
            ApiDriver.FTN_SetParameters(lowSupplyChannel, lowSupplyVoltage, lowSupplyCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(50);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Начать измерение МФТН */
            ApiDriver.FTN_StartBuffer(lowSupplyChannel, timeMeas);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas);
            /* Считать напряжение МФТН */
            result = ApiDriver.FTN_GetBufferU(lowSupplyChannel);
            
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Выключить МФТН */
            ApiDriver.FTN_TurnOff(lowSupplyChannel);
            ApiDriver.FTN_TurnOff(FTN_CH_TO_IN);
            /* Выключить МКР */
            ApiDriver.KR_TurnOff();
            /* Пересчитать результат по модулю */
            result = Math.abs(result);
            /* Сравнить результат с порогами (по модулю), выйти из теста */
            if ((result >= Math.abs(minTest)) && (result <= Math.abs(maxTest))) return RET_OK;
            else return RET_FAIL;

            break;
        }
        case 2: // KontOut
        {
            /* Собрать схему */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_FTNCH2_TO_OUT);
            /* Установить реле МФТН */
            ApiDriver.FTN_SetRele(lowSupplyChannel, FTN_RELE_OUT|FTN_RELE_MEAS);
            /* Подождать включения реле */
            ApiDriver.delayms(15);
            /* Установить параметры МФТН */
            ApiDriver.FTN_SetParameters(lowSupplyChannel, lowSupplyVoltage, lowSupplyCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(50);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Начать измерение МФТН */
            ApiDriver.FTN_StartBuffer(lowSupplyChannel, timeMeas);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas);
            /* Считать напряжение МФТН */
            result = ApiDriver.FTN_GetBufferU(lowSupplyChannel);
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Выключить МФТН */
            ApiDriver.FTN_TurnOff(lowSupplyChannel);
            /* Выключить МКР */
            ApiDriver.KR_TurnOff();
            /* Пересчитать напряжение по модулю */
            result = Math.abs(result);
            /* Сравнить результат с порогами (по модулю), выйти из теста */
            if ((result >= Math.abs(minTest)) && (result <= Math.abs(maxTest))) return RET_OK; // Годен
            else return RET_FAIL; // Брак
            
            break;
        }
        case 3: // Uвых
        {
            /* Собрать схему */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* Установить реле МФНП */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* Установить реле МЭН */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* Подождать включения реле */
            ApiDriver.delayms(15);
            /* Установить параметры МФНП */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* Установить параметры МЭН */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Начать измерение МЭН */
            ApiDriver.EN_StartBuffer(timeMeas);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas);
            /* Считать напряжение МЭН */
            result = ApiDriver.EN_GetBufferU();
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Выключить МФНП */
            ApiDriver.IP_TurnOff();
            /* Выключить МЭН */
            ApiDriver.EN_TurnOff();
            /* Выключить МКР */
            ApiDriver.KR_TurnOff();
            /* Сравнить результат с порогами, выйти из теста */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // Годен
            else return RET_FAIL; // Брак
            
            break;
        }
        case 4: // Uпдmin
        {
            /* Собрать схему */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* Установить реле МФНП */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* Установить реле МЭН */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* Установить реле МИ */
            ApiDriver.MI_SetRele(MI_RELE_MEAS2);
            /* Подождать включения реле */
            ApiDriver.delayms(15);
            /* Установить параметры МФНП */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* Установить параметры МЭН */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(10);
            /* Начать измерение МЭН */
            ApiDriver.EN_StartBuffer(1);
            /* Подождать окончания измерения */
            ApiDriver.delayms(1);
            /* Считать напряжение МЭН */
            result = ApiDriver.EN_GetBufferU();
            /* Добавить вспомогательную переменную */
            var tempUout = result;
            /* Вычислить порог напряжения с шагом 20 мВ. Выпонять алгоритм внутри цикла,
               пока считанное напряжение на выходе > (начального * userVar1) */		
            while (tempUout >= (result * userVar1)) {
                /* Уменьшить напряжение питания на 20 мВ */
                powerSupplyVoltage = powerSupplyVoltage - 0.02;
                /* Если напряжение питания < userVar2 - выход из цикла */
                if (powerSupplyVoltage < userVar2) break;
                /* Установить параметры МФНП */
                ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, 1);
                /* Измерить мгновенное напряжение МЭН */
                ApiDriver.EN_GetParameters();
                /* Получить мгновенное напряжение МЭН */
                tempUout = ApiDriver.EN_GetVoltage();
            }
            ApiDriver.delayms(5);
            /* Увеличить напряжение питания на 40 мВ */
            powerSupplyVoltage = powerSupplyVoltage + 0.04;
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, 1);
            /* Начать измерение МЭН */
            ApiDriver.EN_StartBuffer(1);
            /* Подождать окончания измерения */
            ApiDriver.delayms(1);
            /* Считать напряжение МЭН */
            tempUout = ApiDriver.EN_GetBufferU();
            /* Вычислить порог напряжения с шагом 1 мВ. Выпонять алгоритм внутри цикла,
               пока считанное напряжение на выходе > (начального * userVar1) */
            while (tempUout >= (result * userVar1)) {
                /* Уменьшить напряжение питания на 1 мВ */
                powerSupplyVoltage = powerSupplyVoltage - 0.001;
                /* Если напряжение питания < userVar2 - выход из цикла */
                if (powerSupplyVoltage < userVar2) break;
                /* Установить параметры МФНП */
                ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, 1);
                /* Измерить мгновенное напряжение МЭН */
                ApiDriver.EN_GetParameters();
                /* Получить мгновенное напряжение МЭН */
                tempUout = ApiDriver.EN_GetVoltage();
            }
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Начать измерение МИ */
            ApiDriver.MI_StartBuffer(timeMeas);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas);
            /* Получить напряжение МИ канал 2 (подключен между IN-OUT) */
            result = ApiDriver.MI_GetBufferU(MI_CH2);
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Выключить МФНП */
            ApiDriver.IP_TurnOff();
            /* Выключить МЭН */
            ApiDriver.EN_TurnOff();
            /* Выключить МИ */
            ApiDriver.MI_TurnOff();
            /* Выключить МКР */
            ApiDriver.KR_TurnOff();
            /* Сравнить результат с порогами, выйти из теста */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // Годен
            else return RET_FAIL; // Брак
            
            break;
        }
        case 5: // Iпот
        {
			/* Ввести переменную напряжения на шунте измерителя тока земли (float) */
            var voltShunt = 0.0;
            /* Собрать схему */
            ApiDriver.KR_SetRele(UK_RELE_PWR|UK_RELE_GND|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* Установить реле МИ */
            ApiDriver.MI_SetRele(MI_RELE_IGND);
            /* Установить реле МФНП (без измерителя) */
            ApiDriver.IP_SetRele(IP_RELE_OUT);
            /* Установить реле МЭН (без измерителя) */
            ApiDriver.EN_SetRele(EN_RELE_OUT);
            /* Подождать включения реле */
            ApiDriver.delayms(15);
            /* Установить параметры МФНП */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* Установить параметры МЭН */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(10);
            /* Получить ток земли IGND МИ с измерением */
            result = ApiDriver.MI_GetIGNDfromBuffer(timeMeas/2);
            /* Получить падение напряжения на шунте измерителя тока земли */
            voltShunt = ApiDriver.MI_GetVoltageIGND();
            /* Добавить напряжение падения на шунте к питанию микросхемы */
            ApiDriver.IP_SetParameters(powerSupplyVoltage+voltShunt, powerSupplyCurrent, powerSupplyTimeRF);
            ApiDriver.delayms(5);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Получить ток земли IGND МИ с измерением после добавки напряжения питания */
            result = ApiDriver.MI_GetIGNDfromBuffer(timeMeas/2);
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Выключить МФНП */
            ApiDriver.IP_TurnOff();
            /* Выключить МЭН */
            ApiDriver.EN_TurnOff();
            /* Выключить МИ */
            ApiDriver.MI_TurnOff();
            /* Выключить МКР */
            ApiDriver.KR_TurnOff();
            /* Сравнить результат с порогами, выйти из теста */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // Годен
            else return RET_FAIL; // Брак
            
            break;
        }
        case 6: // Iкз
        {
            /* Собрать схему */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN|UK_RELE_OUT_TO_GND_KZ_PLUS);
            /* Установить реле МФНП */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* Установить реле МЭН */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* Подождать включения реле */
            ApiDriver.delayms(15);
            /* Установить параметры МФНП */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* Установить параметры МЭН */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(20);
            /* Замкнуть выход микросхемы на землю */
            ApiDriver.KR_SetReleBit(UK_RELE_ENABLE_KZ_PLUS);
            /* Подождать замыкания */
            ApiDriver.delayms(1);
            /* Начать измерение МФНП */
            ApiDriver.IP_StartBuffer(timeMeas);
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas);
            
	 ApiDriver.MU_ResetOutput(MU_OUT8);
	 /* Выключить МФНП */
            ApiDriver.IP_TurnOff();
	 /* Считать ток МФНП */
            result = ApiDriver.IP_GetBufferI();
            /* Выключить МЭН */
            ApiDriver.EN_TurnOff();
            /* Выключить МКР */
            ApiDriver.KR_TurnOff();
            /* Сравнить результат с порогами, выйти из теста */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // Годен
            else return RET_FAIL; // Брак
            
            break;
        }
        case 7: // dUu
        {
            /* Ввести переменные Uоп (float) */
            var voltUop1 = 0.0;
            var voltUop2 = 0.0;
            /* Собрать схему */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* Установить реле МФНП */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* Установить реле МЭН */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* Подождать включения реле */
            ApiDriver.delayms(15);
            /* Установить параметры МФНП */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* Установить параметры МЭН */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Начать измерение ЭН */
            ApiDriver.EN_StartBuffer(timeMeas/2);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas/2);
            /* Считать напряжение МЭН */
            voltUop1 = ApiDriver.EN_GetBufferU();
            
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Установить напряжение ФНП userVar1 */
            powerSupplyVoltage = userVar1;
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* Подождать установки параметров */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Начать измерение ЭН */
            ApiDriver.EN_StartBuffer(timeMeas/2);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas/2);
            /* Считать напряжение ЭН */
            voltUop2 = ApiDriver.EN_GetBufferU();
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Выключить МФНП */
            ApiDriver.IP_TurnOff();
            /* Выключить МЭН */
            ApiDriver.EN_TurnOff();
            /* Выключить МКР */
            ApiDriver.KR_TurnOff();
            /* Вычислить dUu */
            result = voltUop2 - voltUop1;
            /* Перевести В в мВ */
            result = result * 1000.0;
            /* Сравнить результат с порогами, выйти из теста */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // Годен
            else return RET_FAIL; // Брак
            
            break;
        }
        case 8: // dUi
        {
            /* Ввести переменные Uоп (float) */
            var voltUop1 = 0.0;
            var voltUop2 = 0.0;
            /* Собрать схему */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* Установить реле МФНП */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* Установить реле МЭН */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* Подождать включения реле */
            ApiDriver.delayms(15);
            /* Установить параметры МФНП */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* Установить параметры МЭН */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Начать измерение МЭН */
            ApiDriver.EN_StartBuffer(timeMeas/2);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas/2);
            /* Считать напряжение ЭН */
            voltUop1 = ApiDriver.EN_GetBufferU();
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Установить ток нагрузки МЭН userVar1 */
            loadCurrent = userVar1;
            ApiDriver.EN_SetParameters(loadCurrent);
            /* Подождать установки параметров */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* Начать измерение МЭН */
            ApiDriver.EN_StartBuffer(timeMeas/2);
            /* Подождать окончания измерения */
            ApiDriver.delayms(timeMeas/2);
            /* Считать напряжение МЭН */
            voltUop2 = ApiDriver.EN_GetBufferU();
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* Выключить МФНП */
            ApiDriver.IP_TurnOff();
            /* Выключить МЭН */
            ApiDriver.EN_TurnOff();
            /* Выключить МКР */
            ApiDriver.KR_TurnOff();
            /* Вычислить dUi */
            result = voltUop1 - voltUop2;
            /* Перевести В в мВ */
            result = result * 1000.0;
            /* Сравнить результат с порогами, выйти из теста */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // Годен
            else return RET_FAIL; // Брак

            break;
        }
			
        default: break;
    }

    return RET_FAIL;
}
