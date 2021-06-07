#include "Lepton_I2C.h"
#include <QtDebug>
#include "leptonSDKEmb32PUB/LEPTON_SDK.h"
#include "leptonSDKEmb32PUB/LEPTON_SYS.h"
#include "leptonSDKEmb32PUB/LEPTON_Types.h"
extern LEP_SYS_FPA_TEMPERATURE_CELCIUS_T fpaTemperaturePtr;
LEP_SYS_FFC_SHUTTER_MODE_OBJ_T shutterModeObj, shutterModeObj1;
LEP_SYS_FFC_SHUTTER_MODE_OBJ_T_PTR shutterModeObjPtr;
bool _connected;

//LEP_CAMERA_PORT_DESC_T _port;

LEP_CAMERA_PORT_DESC_T_PTR _port1;
LEP_CAMERA_PORT_DESC_T _port;
int lepton_connect() {
    int aaa;
    aaa=LEP_OpenPort(1, LEP_CCI_TWI, 400, &_port);
    if (aaa==LEP_OK) {
        qDebug()<<"I2C"<<aaa;
        _port1= &_port;
    }
	_connected = true;
    LEP_SYS_FRAME_AVERAGE_DIVISOR_E numFrameToAverage=LEP_SYS_FA_DIV_32;
    LEP_SetSysFramesToAverage( &_port,numFrameToAverage );
    int aaa_res1;
    aaa_res1=LEP_GetSysFpaTemperatureCelcius(_port1,&fpaTemperaturePtr);
    if (aaa_res1==LEP_OK)
         qDebug()<<"I2C1"<<aaa_res1<< fpaTemperaturePtr;
    else {
        qDebug()<<"I2C2"<<aaa_res1;
    }


    for (int i=0;i<10000;i++);
    int aaa_res2;

    shutterModeObj.shutterMode=LEP_SYS_FFC_SHUTTER_MODE_MANUAL;
    shutterModeObj.desiredFfcPeriod=12000;
    aaa_res2=LEP_SetSysFfcShutterModeObj(_port1,shutterModeObj);
    if (aaa_res2==LEP_OK)
         qDebug()<<"I2C3"<<aaa_res2;
    else {
        qDebug()<<"I2C4"<<aaa_res2;
    }

    for (int i=0;i<10000;i++);
    int aaa_res3;
    aaa_res3=LEP_GetSysFfcShutterModeObj(_port1,&shutterModeObj1);
        if (aaa_res3==LEP_OK)
             qDebug()<<"I2C5"<<aaa_res3<<"Period"<<shutterModeObj1.desiredFfcPeriod;
        else {
            qDebug()<<"I2C6"<<aaa_res3;
        }







	return 0;
}

void lepton_perform_ffc() {
	if(!_connected) {
		lepton_connect();
	}
    LEP_RunSysFFCNormalization(_port1);
}

//presumably more commands could go here if desired
