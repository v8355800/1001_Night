/* �������� ���������� */

/* ���������� ������ ������ ���������� (��):
*
* MU_OUT_OFF;
* MU_OUT0;   MU_OUT1;   MU_OUT2;   MU_OUT3;
* MU_OUT4;   MU_OUT5;   MU_OUT6;   MU_OUT7;
* MU_OUT8;   MU_OUT9;   MU_OUT10;  MU_OUT11;
* MU_OUT12;  MU_OUT13;  MU_OUT14;  MU_OUT15.
*/

/* ���������� ����� ������ ���������� (��):
*
* MU_IN0;  MU_IN1;  MU_IN2;  MU_IN3;
* MU_IN4;  MU_IN5;  MU_IN6;  MU_IN7.
*/

/* ������ ������ ��������� ���� (���):
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

/* ���� ���� ����������:
*
* UK_RELE_PWR - ���������� �������� ������� (IN);
* UK_RELE_GND - ���������� ����� ���������� (GND);
* 
* UK_RELE_CAP_OUT - ���������� ����������� � ������ (OUT);
* UK_RELE_CAP_IN  - ���������� ����������� �� ����� (IN);
* 
* UK_RELE_ADJ_TO_OUT    - ���������� (ADJ) � (OUT);
* UK_RELE_ADJ_UP_R205   - ���������� (ADJ) � (OUT) ����� �������� 205 ���;
* UK_RELE_ADJ_DOWN_R125 - ���������� (ADJ) � (GND) ����� �������� 125 ���;
* 
* UK_RELE_OUT_TO_GND_KZ_PLUS  - ���������� (OUT) � (GND) (��� ��������� � ������������� �������);
* UK_RELE_OUT_TO_GND_KZ_MINUS - ���������� (OUT) � (GND) (��� ��������� � ������������� �������);
* UK_RELE_ENABLE_KZ_PLUS  - ��������� �� (��� ��������� � ������������� �������);
* UK_RELE_ENABLE_KZ_MINUS - ��������� �� (��� ��������� � ������������� �������);
* 
* UK_RELE_FTNCH1_TO_IN  - ���������� FTN_CH1 � (IN);
* UK_RELE_FTNCH1_TO_ADJ - ���������� FTN_CH1 � (ADJ);
* UK_RELE_FTNCH2_TO_OUT - ���������� FTN_CH2 � (OUT);
* UK_RELE_FTNCH2_TO_EN  - ���������� FTN_CH2 � (EN);
* 
* UK_RELE_MICH1_TO_IGND   - ���������� MI_CH1 ��� ��������� IGND;
* UK_RELE_SHUNT_TO_IGND   - ���������� ���� ��� ��������� IGND;
* UK_RELE_SHUNT_IGND_200M - ���������� ���� 200 �� ��� ��������� IGND;
* UK_RELE_SHUNT_IGND_10M  - ���������� ���� 10 �� ��� ��������� IGND;
* UK_RELE_SHUNT_IGND_100U - ���������� ���� 100 ��� ��� ��������� IGND;
* UK_RELE_BURN0 - ������� ��������� 0;
* UK_RELE_BURN1 - ������� ��������� 1;
* UK_RELE_BURN2 - ������� ��������� 2;
* UK_RELE_BURN3 - ������� ��������� 3;
* UK_RELE_BURN4 - ������� ��������� 4;
* UK_RELE_BURN5 - ������� ��������� 5.
*/

/* ���� ������ ������������ �������� ���������� (����):
*
* FTN_RELE_OFF   - ��������� ��� ����;
* FTN_RELE_MEAS  - ���������� ���������� ����������;
* FTN_RELE_SHUNT - ���������� ���� 10 ��;
* FTN_RELE_OUT   - ���������� �����.
*/

/* ������ ������ ������������ �������� ���������� (����):
*
* FTN_CH1 - ����� 1;  FTN_CH2 - ����� 2.
*/

/* ��������� ������� ������ ������������ �������� ���������� (����):
* FTN_CH_TO_IN  - ���������� ����� FTN � (IN);
* FTN_CH_TO_ADJ - ���������� ����� FTN � (ADJ);
* FTN_CH_TO_OUT - ���������� ����� FTN � (OUT);
* FTN_CH_TO_EN  - ���������� ����� FTN � (EN).
*/

/* ���� ������ ������������ ���������� ������� (����):
*
* IP_RELE_OFF  - ��������� ��� ����;
* IP_RELE_MEAS - ���������� ���������� ����������;
* IP_RELE_OUT  - ���������� �����.
*/

/* ���� ������ ����������� �������� (���):
*
* EN_RELE_OFF  - ��������� ��� ����;
* EN_RELE_MEAS - ���������� ���������� ����������;
* EN_RELE_OUT  - ���������� �����.
*/

/* ���� ������ ���������� (��):
*
* MI_RELE_OFF   - ��������� ��� ����;
* MI_RELE_MEAS1 - ���������� ���������� ���������� ������ 1;
* MI_RELE_MEAS2 - ���������� ���������� ���������� ������ 2;
* MI_RELE_MEAS3 - ���������� ���������� ���������� ������ 3;
* MI_RELE_IGND  - ���������� ���������� ���� IGND.
*/

/* ������ ������ ���������� (��):
*
* MI_CH1 - ����� 1 (�� 1.0 �);
* MI_CH2 - ����� 2 (�� 2.25 �);
* MI_CH3 - ����� 3 (�� 32.0 �).
*/

/* ��������� �����:
*
* RET_FAIL - ��������� ����;
* RET_OK   - ��������� �����;
* RET_OK_A - ��������� ����� �;  RET_OK_B - ��������� ����� �;
* RET_OK_C - ��������� ����� �;  RET_OK_D - ��������� ����� �;
* RET_OK_E - ��������� ����� �;  RET_OK_F - ��������� ����� �;
* RET_OK_G - ��������� ����� �.
*/

/* ���������� ��������� � ����������:
*
* typeTest           - (unsigned int) ������������ ����� ��������� ����-���������;
*
* measTime           - (unsigned int) ���������� ����� ��������� ��������� ����� (�� �����������);
*
* powerSupplyVoltage - (float) ���������� ����, ��������� � (IN) (�� -30.0 �� 30.0 �);
* powerSupplyCurrent - (float) ��� ����������� (����), ��������� � (IN) (�� 6.0 �);
* powerSupplyTimeRF  - (unsigned int) ����� ����������/����� ���������� (����),
                                      ��������� � (IN) (�� 0 �� 1000 ��);
*
* lowSupplyVoltage   - (float) ���������� ��������� ������ (����) (�� -25.0 �� 25.0 �);
* lowSupplyCurrent   - (float) ��� ����������� ��������� ������ ���� (�� 10.0 ��);
* lowSupplyChannel   - (unsigned int) �������� ����� ���� (1, 2);
*
* loadCurrent        - (float) ��� �������� ���, ��������� � (OUT) (�� -1.5 �� 1.5 A);
*
* minTest            - (float) ����������� ����� �����;
* maxTest            - (float) ������������ ����� �����;
*
* userVar1  userVar2  userVar3  userVar4  userVar5 - (float) ���������������� ����������;
*
* result - ���������� � ������� ������ ���������� ��������� ���������� �����.
*/

/* ������ ��������� ����-��������� */

function main() {
    switch (typeTest) {
        case 1: // KontOUTtoIn
        {
            /* ������� ����� */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_FTNCH2_TO_OUT|UK_RELE_FTNCH1_TO_IN);
            /* ���������� ���� ���� */
            ApiDriver.FTN_SetRele(FTN_CH_TO_IN, FTN_RELE_OUT|FTN_RELE_MEAS);
            ApiDriver.FTN_SetRele(lowSupplyChannel, FTN_RELE_OUT|FTN_RELE_MEAS);
            /* ��������� ��������� ���� */
            ApiDriver.delayms(15);
            /* ���������� ��������� ���� */
            ApiDriver.FTN_SetParameters(FTN_CH_TO_IN, 0, userVar1);
            ApiDriver.FTN_SetParameters(lowSupplyChannel, lowSupplyVoltage, lowSupplyCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(50);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ������ ��������� ���� */
            ApiDriver.FTN_StartBuffer(lowSupplyChannel, timeMeas);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas);
            /* ������� ���������� ���� */
            result = ApiDriver.FTN_GetBufferU(lowSupplyChannel);
            
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ��������� ���� */
            ApiDriver.FTN_TurnOff(lowSupplyChannel);
            ApiDriver.FTN_TurnOff(FTN_CH_TO_IN);
            /* ��������� ��� */
            ApiDriver.KR_TurnOff();
            /* ����������� ��������� �� ������ */
            result = Math.abs(result);
            /* �������� ��������� � �������� (�� ������), ����� �� ����� */
            if ((result >= Math.abs(minTest)) && (result <= Math.abs(maxTest))) return RET_OK;
            else return RET_FAIL;

            break;
        }
        case 2: // KontOut
        {
            /* ������� ����� */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_FTNCH2_TO_OUT);
            /* ���������� ���� ���� */
            ApiDriver.FTN_SetRele(lowSupplyChannel, FTN_RELE_OUT|FTN_RELE_MEAS);
            /* ��������� ��������� ���� */
            ApiDriver.delayms(15);
            /* ���������� ��������� ���� */
            ApiDriver.FTN_SetParameters(lowSupplyChannel, lowSupplyVoltage, lowSupplyCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(50);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ������ ��������� ���� */
            ApiDriver.FTN_StartBuffer(lowSupplyChannel, timeMeas);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas);
            /* ������� ���������� ���� */
            result = ApiDriver.FTN_GetBufferU(lowSupplyChannel);
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ��������� ���� */
            ApiDriver.FTN_TurnOff(lowSupplyChannel);
            /* ��������� ��� */
            ApiDriver.KR_TurnOff();
            /* ����������� ���������� �� ������ */
            result = Math.abs(result);
            /* �������� ��������� � �������� (�� ������), ����� �� ����� */
            if ((result >= Math.abs(minTest)) && (result <= Math.abs(maxTest))) return RET_OK; // �����
            else return RET_FAIL; // ����
            
            break;
        }
        case 3: // U���
        {
            /* ������� ����� */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* ���������� ���� ���� */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* ���������� ���� ��� */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* ��������� ��������� ���� */
            ApiDriver.delayms(15);
            /* ���������� ��������� ���� */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* ���������� ��������� ��� */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ������ ��������� ��� */
            ApiDriver.EN_StartBuffer(timeMeas);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas);
            /* ������� ���������� ��� */
            result = ApiDriver.EN_GetBufferU();
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ��������� ���� */
            ApiDriver.IP_TurnOff();
            /* ��������� ��� */
            ApiDriver.EN_TurnOff();
            /* ��������� ��� */
            ApiDriver.KR_TurnOff();
            /* �������� ��������� � ��������, ����� �� ����� */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // �����
            else return RET_FAIL; // ����
            
            break;
        }
        case 4: // U��min
        {
            /* ������� ����� */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* ���������� ���� ���� */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* ���������� ���� ��� */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* ���������� ���� �� */
            ApiDriver.MI_SetRele(MI_RELE_MEAS2);
            /* ��������� ��������� ���� */
            ApiDriver.delayms(15);
            /* ���������� ��������� ���� */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* ���������� ��������� ��� */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(10);
            /* ������ ��������� ��� */
            ApiDriver.EN_StartBuffer(1);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(1);
            /* ������� ���������� ��� */
            result = ApiDriver.EN_GetBufferU();
            /* �������� ��������������� ���������� */
            var tempUout = result;
            /* ��������� ����� ���������� � ����� 20 ��. �������� �������� ������ �����,
               ���� ��������� ���������� �� ������ > (���������� * userVar1) */		
            while (tempUout >= (result * userVar1)) {
                /* ��������� ���������� ������� �� 20 �� */
                powerSupplyVoltage = powerSupplyVoltage - 0.02;
                /* ���� ���������� ������� < userVar2 - ����� �� ����� */
                if (powerSupplyVoltage < userVar2) break;
                /* ���������� ��������� ���� */
                ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, 1);
                /* �������� ���������� ���������� ��� */
                ApiDriver.EN_GetParameters();
                /* �������� ���������� ���������� ��� */
                tempUout = ApiDriver.EN_GetVoltage();
            }
            ApiDriver.delayms(5);
            /* ��������� ���������� ������� �� 40 �� */
            powerSupplyVoltage = powerSupplyVoltage + 0.04;
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, 1);
            /* ������ ��������� ��� */
            ApiDriver.EN_StartBuffer(1);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(1);
            /* ������� ���������� ��� */
            tempUout = ApiDriver.EN_GetBufferU();
            /* ��������� ����� ���������� � ����� 1 ��. �������� �������� ������ �����,
               ���� ��������� ���������� �� ������ > (���������� * userVar1) */
            while (tempUout >= (result * userVar1)) {
                /* ��������� ���������� ������� �� 1 �� */
                powerSupplyVoltage = powerSupplyVoltage - 0.001;
                /* ���� ���������� ������� < userVar2 - ����� �� ����� */
                if (powerSupplyVoltage < userVar2) break;
                /* ���������� ��������� ���� */
                ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, 1);
                /* �������� ���������� ���������� ��� */
                ApiDriver.EN_GetParameters();
                /* �������� ���������� ���������� ��� */
                tempUout = ApiDriver.EN_GetVoltage();
            }
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ������ ��������� �� */
            ApiDriver.MI_StartBuffer(timeMeas);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas);
            /* �������� ���������� �� ����� 2 (��������� ����� IN-OUT) */
            result = ApiDriver.MI_GetBufferU(MI_CH2);
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ��������� ���� */
            ApiDriver.IP_TurnOff();
            /* ��������� ��� */
            ApiDriver.EN_TurnOff();
            /* ��������� �� */
            ApiDriver.MI_TurnOff();
            /* ��������� ��� */
            ApiDriver.KR_TurnOff();
            /* �������� ��������� � ��������, ����� �� ����� */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // �����
            else return RET_FAIL; // ����
            
            break;
        }
        case 5: // I���
        {
			/* ������ ���������� ���������� �� ����� ���������� ���� ����� (float) */
            var voltShunt = 0.0;
            /* ������� ����� */
            ApiDriver.KR_SetRele(UK_RELE_PWR|UK_RELE_GND|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* ���������� ���� �� */
            ApiDriver.MI_SetRele(MI_RELE_IGND);
            /* ���������� ���� ���� (��� ����������) */
            ApiDriver.IP_SetRele(IP_RELE_OUT);
            /* ���������� ���� ��� (��� ����������) */
            ApiDriver.EN_SetRele(EN_RELE_OUT);
            /* ��������� ��������� ���� */
            ApiDriver.delayms(15);
            /* ���������� ��������� ���� */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* ���������� ��������� ��� */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(10);
            /* �������� ��� ����� IGND �� � ���������� */
            result = ApiDriver.MI_GetIGNDfromBuffer(timeMeas/2);
            /* �������� ������� ���������� �� ����� ���������� ���� ����� */
            voltShunt = ApiDriver.MI_GetVoltageIGND();
            /* �������� ���������� ������� �� ����� � ������� ���������� */
            ApiDriver.IP_SetParameters(powerSupplyVoltage+voltShunt, powerSupplyCurrent, powerSupplyTimeRF);
            ApiDriver.delayms(5);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* �������� ��� ����� IGND �� � ���������� ����� ������� ���������� ������� */
            result = ApiDriver.MI_GetIGNDfromBuffer(timeMeas/2);
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ��������� ���� */
            ApiDriver.IP_TurnOff();
            /* ��������� ��� */
            ApiDriver.EN_TurnOff();
            /* ��������� �� */
            ApiDriver.MI_TurnOff();
            /* ��������� ��� */
            ApiDriver.KR_TurnOff();
            /* �������� ��������� � ��������, ����� �� ����� */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // �����
            else return RET_FAIL; // ����
            
            break;
        }
        case 6: // I��
        {
            /* ������� ����� */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN|UK_RELE_OUT_TO_GND_KZ_PLUS);
            /* ���������� ���� ���� */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* ���������� ���� ��� */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* ��������� ��������� ���� */
            ApiDriver.delayms(15);
            /* ���������� ��������� ���� */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* ���������� ��������� ��� */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(20);
            /* �������� ����� ���������� �� ����� */
            ApiDriver.KR_SetReleBit(UK_RELE_ENABLE_KZ_PLUS);
            /* ��������� ��������� */
            ApiDriver.delayms(1);
            /* ������ ��������� ���� */
            ApiDriver.IP_StartBuffer(timeMeas);
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas);
            
	 ApiDriver.MU_ResetOutput(MU_OUT8);
	 /* ��������� ���� */
            ApiDriver.IP_TurnOff();
	 /* ������� ��� ���� */
            result = ApiDriver.IP_GetBufferI();
            /* ��������� ��� */
            ApiDriver.EN_TurnOff();
            /* ��������� ��� */
            ApiDriver.KR_TurnOff();
            /* �������� ��������� � ��������, ����� �� ����� */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // �����
            else return RET_FAIL; // ����
            
            break;
        }
        case 7: // dUu
        {
            /* ������ ���������� U�� (float) */
            var voltUop1 = 0.0;
            var voltUop2 = 0.0;
            /* ������� ����� */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* ���������� ���� ���� */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* ���������� ���� ��� */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* ��������� ��������� ���� */
            ApiDriver.delayms(15);
            /* ���������� ��������� ���� */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* ���������� ��������� ��� */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ������ ��������� �� */
            ApiDriver.EN_StartBuffer(timeMeas/2);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas/2);
            /* ������� ���������� ��� */
            voltUop1 = ApiDriver.EN_GetBufferU();
            
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ���������� ���������� ��� userVar1 */
            powerSupplyVoltage = userVar1;
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ������ ��������� �� */
            ApiDriver.EN_StartBuffer(timeMeas/2);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas/2);
            /* ������� ���������� �� */
            voltUop2 = ApiDriver.EN_GetBufferU();
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ��������� ���� */
            ApiDriver.IP_TurnOff();
            /* ��������� ��� */
            ApiDriver.EN_TurnOff();
            /* ��������� ��� */
            ApiDriver.KR_TurnOff();
            /* ��������� dUu */
            result = voltUop2 - voltUop1;
            /* ��������� � � �� */
            result = result * 1000.0;
            /* �������� ��������� � ��������, ����� �� ����� */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // �����
            else return RET_FAIL; // ����
            
            break;
        }
        case 8: // dUi
        {
            /* ������ ���������� U�� (float) */
            var voltUop1 = 0.0;
            var voltUop2 = 0.0;
            /* ������� ����� */
            ApiDriver.KR_SetRele(UK_RELE_GND|UK_RELE_PWR|UK_RELE_CAP_OUT|UK_RELE_CAP_IN);
            /* ���������� ���� ���� */
            ApiDriver.IP_SetRele(IP_RELE_OUT|IP_RELE_MEAS);
            /* ���������� ���� ��� */
            ApiDriver.EN_SetRele(EN_RELE_OUT|EN_RELE_MEAS);
            /* ��������� ��������� ���� */
            ApiDriver.delayms(15);
            /* ���������� ��������� ���� */
            ApiDriver.IP_SetParameters(powerSupplyVoltage, powerSupplyCurrent, powerSupplyTimeRF);
            /* ���������� ��������� ��� */
            ApiDriver.EN_SetParameters(loadCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ������ ��������� ��� */
            ApiDriver.EN_StartBuffer(timeMeas/2);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas/2);
            /* ������� ���������� �� */
            voltUop1 = ApiDriver.EN_GetBufferU();
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ���������� ��� �������� ��� userVar1 */
            loadCurrent = userVar1;
            ApiDriver.EN_SetParameters(loadCurrent);
            /* ��������� ��������� ���������� */
            ApiDriver.delayms(10);
			
            ApiDriver.MU_SetOutputBit(MU_OUT8);
            /* ������ ��������� ��� */
            ApiDriver.EN_StartBuffer(timeMeas/2);
            /* ��������� ��������� ��������� */
            ApiDriver.delayms(timeMeas/2);
            /* ������� ���������� ��� */
            voltUop2 = ApiDriver.EN_GetBufferU();
			
            ApiDriver.MU_ResetOutputBit(MU_OUT8);
            /* ��������� ���� */
            ApiDriver.IP_TurnOff();
            /* ��������� ��� */
            ApiDriver.EN_TurnOff();
            /* ��������� ��� */
            ApiDriver.KR_TurnOff();
            /* ��������� dUi */
            result = voltUop1 - voltUop2;
            /* ��������� � � �� */
            result = result * 1000.0;
            /* �������� ��������� � ��������, ����� �� ����� */
            if ((result >= minTest) && (result <= maxTest)) return RET_OK; // �����
            else return RET_FAIL; // ����

            break;
        }
			
        default: break;
    }

    return RET_FAIL;
}
