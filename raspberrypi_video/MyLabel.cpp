#include "MyLabel.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include "SPI.h"
#include <sys/stat.h>
#include <time.h>
#include <fcntl.h>
#include <QPushButton>
#include "leptonSDKEmb32PUB/LEPTON_SDK.h"
#include "leptonSDKEmb32PUB/LEPTON_SYS.h"
#include "leptonSDKEmb32PUB/LEPTON_Types.h"
#include "leptonSDKEmb32PUB/LEPTON_OEM.h"
#include "leptonSDKEmb32PUB/LEPTON_RAD.h"
#include "leptonSDKEmb32PUB/LEPTON_AGC.h"


extern uint16_t frameBuffer1[82*60];
extern uint16_t frameBuffer2[82*60];
extern int i_max_changed;
extern int i_min_changed;
extern int button_h, button_w;
extern int temp_max_int;
extern int temp_cnt;
extern float cur_temp;
extern int DET2IMG;
extern int times_v,times_h;
extern LEP_SYS_FPA_TEMPERATURE_CELCIUS_T fpaTemperaturePtr;
extern LEP_CAMERA_PORT_DESC_T _port;
extern int Tvalue;
extern float temp_add;
extern int max_i;
int sw=1;
float add_temp =0;//3.5;
LEP_SYS_SHUTTER_POSITION_E shutterPosition,shutterPosition1;
LEP_RAD_TS_MODE_E radTShutterModePtr;
LEP_RAD_ENABLE_E radEnableState;

MyLabel::MyLabel(QWidget *parent) : QLabel(parent)
{
    myMax= new QLabel(this);
    myMax2= new QLabel(this);

}
MyLabel::~MyLabel()
{
}

//when the system calls setImage, we'll set the label's pixmap
void MyLabel::setImage(QImage image) {
  QPixmap pixmap = QPixmap::fromImage(image);
 
  int w = this->width();
  int h = this->height();
  setPixmap(pixmap.scaled(w, h, Qt::KeepAspectRatioByExpanding));
  
   if (i_max_changed == 1){
    	
  	//QLabel *myMax= new QLabel(this); 
	myMax->setGeometry(10,10,80,40);
    myMax2->setGeometry(10,10,80,40);
    QFont f("Arial",20,QFont::Bold);

	myMax->setFont(f);
    myMax2->setFont(f);

	char s[20];
    char d[20];

    float temp=temp_max_int/59.5-100;

    LEP_RAD_ROI_T spotmeterRoi;
    spotmeterRoi.startRow=button_h;
    spotmeterRoi.endRow=button_h+1;
    spotmeterRoi.startCol=button_w;
    spotmeterRoi.endCol=button_w+1;

    LEP_SetRadSpotmeterRoi(&_port,spotmeterRoi);


    LEP_RAD_SPOTMETER_OBJ_KELVIN_T kelvinPtr;
    LEP_GetRadSpotmeterObjInKelvinX100(&_port,&kelvinPtr);
    int Temp_body_K = kelvinPtr.radSpotmeterValue;
    temp =(Temp_body_K/10)/10.0-273.13+temp_add;
    //temp=temp_max_int;

    // qDebug()<<"Spot "<<temp<<"Populaton"<<kelvinPtr.radSpotmeterPopulation;

    
    

	sprintf(s,"%4.1f",temp);
    //sprintf(d,"%4.1f",cur_temp);

  	myMax->setText(s);

   // myMax->move(button_w*DET2IMG*times_v,button_h*DET2IMG*times_h);
    myMax->move(button_w*DET2IMG,button_h*DET2IMG);
  	myMax->show(); 
	
	
        
	i_max_changed=0;
  }
   myMax2->setGeometry(10,10,80,40);
   QFont f("Arial",20,QFont::Bold);
   myMax2->setFont(f);

   char d[20];
    //sprintf(d,"%.1f",cur_temp);
    sprintf(d,"%6.2f",fpaTemperaturePtr);
    myMax2->setText(d);
    myMax2->show();
//qDebug()<<"temp_cnt:"<<temp_cnt;
 if (temp_cnt > 90){
//SpiClosePort(0);
//qDebug()<<"SPI 0 Close";
for (int jjj=0;jjj<50;jjj++) ;
		SpiOpenPort(1);

        //qDebug() << "Hello SPI1";
        int adc_temp;
        read(spi_cs1_fd, &adc_temp, 1);
        //qDebug()<<"SPI 1adc :" <<adc_temp;

		SpiClosePort(1);
        //qDebug() << "Bye SPI1";

//qDebug() << "/nHello SPI1 temp :" ;//<< temp_cnt;//adc_temp;
for (int jjj=0;jjj<500;jjj++) ;
//		SpiOpenPort(0);
//qDebug()<<"SPI 0 Open";
temp_cnt=0;
}

  FILE *fptr;
        	 
	fptr = fopen("/home/pi/Downloads/LeptonModule-master/software/raspberrypi_video/aa.dat","wb");

	
	fwrite(frameBuffer1,2,80*60,fptr);
	fclose(fptr);
FILE *fptr1;
fptr1 = fopen("/home/pi/Downloads/LeptonModule-master/software/raspberrypi_video/bb.txt","wb");
fprintf(fptr1,"current temp %s\n",d);
for (int i=0;i<80*60;i++){
	fprintf(fptr1,"%d %d\n",i,frameBuffer1[i]);
	if (i==(80*60-1)){
		fprintf(fptr1,"\n END ");
	}
}	
fclose(fptr1);
	
}

void MyLabel::Reboot_cam() {
    //LEP_RunOemReboot(&_port);
    temp_add=add_temp;

    if (sw==1){
        max_i=1;
        sw=2;
        shutterPosition=LEP_SYS_SHUTTER_POSITION_CLOSED;
        LEP_SetSysShutterPosition(&_port, shutterPosition);
        // qDebug()<<"Shutter1"<<shutterPosition1;
    }
    else{
        sw=1;
         max_i=1;
         radEnableState=LEP_RAD_DISABLE;
         LEP_SetRadEnableState(  &_port,radEnableState );
         shutterPosition=LEP_SYS_SHUTTER_POSITION_OPEN;
         LEP_SetSysShutterPosition(&_port, shutterPosition);
        //  qDebug()<<"Shutter1"<<shutterPosition1;
    }

    LEP_GetRadTShutterMode( &_port,&radTShutterModePtr );
    qDebug()<<"TShutter1"<<radTShutterModePtr;

    if (radTShutterModePtr ==LEP_RAD_TS_CAL_MODE){
        radTShutterModePtr=LEP_RAD_TS_FIXED_MODE;
        LEP_SetRadTShutterMode( &_port,radTShutterModePtr );
        qDebug()<<"TShutter2"<<radTShutterModePtr<<"aaa"<<LEP_RAD_TS_USER_MODE;


    }

LEP_GetRadEnableState(  &_port,&radEnableState );
qDebug()<<"TRAD"<<radEnableState;
}


void MyLabel::ShutterControl() {
    

    LEP_GetRadTShutterMode( &_port,&radTShutterModePtr );
    qDebug()<<"TShutter1"<<radTShutterModePtr;
    if (radTShutterModePtr == LEP_SYS_SHUTTER_POSITION_OPEN){
     
        shutterPosition=LEP_SYS_SHUTTER_POSITION_CLOSED;
        
    }
    else{
       
         shutterPosition=LEP_SYS_SHUTTER_POSITION_OPEN;

    }

    LEP_SetSysShutterPosition(&_port, shutterPosition);
    

   /* if (radTShutterModePtr ==LEP_RAD_TS_CAL_MODE){
        radTShutterModePtr=LEP_RAD_TS_FIXED_MODE;
        LEP_SetRadTShutterMode( &_port,radTShutterModePtr );
        qDebug()<<"TShutter2"<<radTShutterModePtr<<"aaa"<<LEP_RAD_TS_USER_MODE;


    }*/


}




void MyLabel::RadEnableState() {
    
    LEP_GetRadEnableState(  &_port,&radEnableState );
    if (radEnableState==LEP_RAD_DISABLE)
            radEnableState=LEP_RAD_ENABLE;
    else 
            radEnableState=LEP_RAD_DISABLE;
    LEP_SetRadEnableState(  &_port,radEnableState );
    qDebug()<<"RAD "<<radEnableState;
}


void MyLabel::AgcEnableState() {
    
    LEP_AGC_ENABLE_E agcEnableState;
    LEP_GetAgcEnableState(&_port,&agcEnableState);
    
    
    if (agcEnableState==LEP_RAD_DISABLE)
            agcEnableState=LEP_AGC_ENABLE;
    else 
            agcEnableState=LEP_AGC_DISABLE;
    LEP_SetAgcEnableState(  &_port,agcEnableState );
    qDebug()<<"AGC "<<agcEnableState;
}




void MyLabel::saveData() {
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);

    char d[20];
    sprintf(d,"%.1f",cur_temp);
    FILE *fptr1;
    fptr1 = fopen("/home/pi/Downloads/LeptonModule-master/software/raspberrypi_video/test.txt","wb");
    fprintf(fptr1,"%d-%d-%d %d:%d:%d\n",tm.tm_year+1900,tm.tm_mon+1,
           tm.tm_mday,tm.tm_hour,tm.tm_min,tm.tm_sec);
    fprintf(fptr1,"current temp %s\n",d);
    for (int i=0;i<80*60;i++){
        fprintf(fptr1,"%d %d\n",i,frameBuffer1[i]);
        if (i==(80*60-1)){
            fprintf(fptr1,"\n END ");
        }
    }
    fclose(fptr1);
    LEP_SYS_STATUS_E ffcStatus;
    LEP_GetSysFFCStatus(&_port,&ffcStatus);


    shutterPosition=LEP_SYS_SHUTTER_POSITION_CLOSED;

    LEP_GetSysShutterPosition(&_port, &shutterPosition1);
    qDebug()<<"Shutter1"<<shutterPosition1;
    qDebug()<<"ffc"<<ffcStatus;
    if (ffcStatus==0) {
        LEP_SetSysShutterPosition(&_port, shutterPosition);
        shutterPosition=LEP_SYS_SHUTTER_POSITION_BRAKE_ON;
        //LEP_SetSysShutterPosition(&_port, shutterPosition);

        //LEP_RunSysFFCNormalization(&_port);
    }
    LEP_GetSysShutterPosition(&_port, &shutterPosition1);
    //LEP_SetSysShutterPosition(&_port, shutterPosition);
    qDebug()<<"Shutter1"<<shutterPosition1;
    LEP_RAD_KELVIN_T radTShutter,radTShutter1;
    LEP_GetRadTShutter( &_port,&radTShutter );
    qDebug()<<"TShutter"<<radTShutter;
    if (Tvalue ==1){
        Tvalue=1;
        radTShutter1=30000;
    }
    else {
        Tvalue=1;
        radTShutter1=30000;
    }

    //qDebug()<<"TShutter1"<<radTShutter1;
    LEP_SetRadTShutter( &_port,radTShutter1 );


}

LEP_RESULT LEP_GetRadTShutter( LEP_CAMERA_PORT_DESC_T_PTR portDescPtr,
                               LEP_RAD_KELVIN_T_PTR radTShutterPtr )
{
   LEP_RESULT result = LEP_OK;
   LEP_UINT16 attributeWordLength = 1;    // single 16-bit word

   if( radTShutterPtr == NULL )
   {
      return( LEP_BAD_ARG_POINTER_ERROR );
   }
   result = LEP_GetAttribute(  portDescPtr,
                              ( LEP_COMMAND_ID )LEP_CID_RAD_TSHUTTER,
                              ( LEP_ATTRIBUTE_T_PTR )radTShutterPtr,
                              attributeWordLength );
   return( result );
}
LEP_RESULT LEP_SetRadTShutter( LEP_CAMERA_PORT_DESC_T_PTR portDescPtr,
                               LEP_RAD_KELVIN_T radTShutter )
{
   LEP_RESULT result = LEP_OK;
   LEP_UINT16 attributeWordLength = 1; /* single 16-bit value */

   result = LEP_SetAttribute( portDescPtr,
                              ( LEP_COMMAND_ID )LEP_CID_RAD_TSHUTTER,
                              ( LEP_ATTRIBUTE_T_PTR ) & radTShutter,
                              attributeWordLength );
   return( result );
}

LEP_RESULT LEP_GetRadSpotmeterObjInKelvinX100(LEP_CAMERA_PORT_DESC_T_PTR portDescPtr,
                                              LEP_RAD_SPOTMETER_OBJ_KELVIN_T_PTR kelvinPtr)
{
   LEP_RESULT result = LEP_OK;
   LEP_UINT16 attributeWordLength = 4;

   if(kelvinPtr == NULL)
   {
      return(LEP_BAD_ARG_POINTER_ERROR);
   }

   result = LEP_GetAttribute(portDescPtr,
                             (LEP_COMMAND_ID)LEP_CID_RAD_SPOTMETER_OBJ_KELVIN,
                             (LEP_ATTRIBUTE_T_PTR)kelvinPtr,
                             attributeWordLength);
   return(result);
}

LEP_RESULT LEP_SetRadSpotmeterRoi(LEP_CAMERA_PORT_DESC_T_PTR portDescPtr,
                                  LEP_RAD_ROI_T spotmeterRoi)
{
   LEP_RESULT result = LEP_OK;
   LEP_UINT16 attributeWordLength = 4;

   result = LEP_SetAttribute(portDescPtr,
                             (LEP_COMMAND_ID)LEP_CID_RAD_SPOTMETER_ROI,
                             (LEP_ATTRIBUTE_T_PTR)&spotmeterRoi,
                             attributeWordLength);
   return(result);
}

LEP_RESULT LEP_GetRadEnableState( LEP_CAMERA_PORT_DESC_T_PTR portDescPtr,
                                  LEP_RAD_ENABLE_E_PTR radEnableStatePtr )
{
   LEP_RESULT result = LEP_OK;
   LEP_UINT16 attributeWordLength = 2;    // 2 16-bit words for an enum

   if( radEnableStatePtr == NULL )
   {
      return( LEP_BAD_ARG_POINTER_ERROR );
   }
   result = LEP_GetAttribute(  portDescPtr,
                              ( LEP_COMMAND_ID )LEP_CID_RAD_ENABLE_STATE,
                              ( LEP_ATTRIBUTE_T_PTR )radEnableStatePtr,
                              attributeWordLength );

   return( result );
}


LEP_RESULT LEP_SetRadEnableState( LEP_CAMERA_PORT_DESC_T_PTR portDescPtr,
                                  LEP_RAD_ENABLE_E radEnableState )
{
   LEP_RESULT result = LEP_OK;
   LEP_UINT16 attributeWordLength = 2;    // 2 16-bit words for an enum

   result = LEP_SetAttribute( portDescPtr,
                              ( LEP_COMMAND_ID )LEP_CID_RAD_ENABLE_STATE,
                              ( LEP_ATTRIBUTE_T_PTR ) & radEnableState,
                              attributeWordLength );

   return( result );
}

LEP_RESULT LEP_RunOemReboot( LEP_CAMERA_PORT_DESC_T_PTR portDescPtr )
{
   LEP_RESULT result = LEP_OK;

   result = LEP_RunCommand( portDescPtr, ( LEP_COMMAND_ID )LEP_CID_OEM_REBOOT );

   return( result );
}

LEP_RESULT LEP_GetRadTShutterMode( LEP_CAMERA_PORT_DESC_T_PTR portDescPtr,
                                   LEP_RAD_TS_MODE_E_PTR radTShutterModePtr )
{
   LEP_RESULT result = LEP_OK;
   LEP_UINT16 attributeWordLength = 2; /* two 16-bit values for 32-bit enum */

   /* Validate Parameter(s)
   */
   if( radTShutterModePtr == NULL )
   {
      return( LEP_BAD_ARG_POINTER_ERROR );
   }

   /* Perform Command
   ** Reading the Camera's current TShutter mode
   */
   result = LEP_GetAttribute( portDescPtr,
                              ( LEP_COMMAND_ID )LEP_CID_RAD_TSHUTTER_MODE,
                              ( LEP_ATTRIBUTE_T_PTR )radTShutterModePtr,
                              attributeWordLength );
   return( result );
}

LEP_RESULT LEP_SetRadTShutterMode( LEP_CAMERA_PORT_DESC_T_PTR portDescPtr,
                                   LEP_RAD_TS_MODE_E radTShutterMode )
{
   LEP_RESULT result = LEP_OK;
   LEP_UINT16 attributeWordLength = 2; /* two 16-bit values for 32-bit enum */

   /* Validate Parameter(s)
   */
   if( radTShutterMode >= LEP_RAD_TS_END_TS_MODE )
   {
      return( LEP_RANGE_ERROR );
   }

   /* Perform Command
   ** Writing the Camera's current TShutter mode
   */
   result = LEP_SetAttribute( portDescPtr,
                              ( LEP_COMMAND_ID )LEP_CID_RAD_TSHUTTER_MODE,
                              ( LEP_ATTRIBUTE_T_PTR ) & radTShutterMode,
                              attributeWordLength );
   return( result );
}
