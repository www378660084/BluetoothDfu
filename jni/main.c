#include "btdfu.h"

int  main(int argc,char* argv[]){
  set_bt_dfu("/dev/ttyMSM2","/flyrwdata/FlyAudio_BT_Update.dfu",9600,115200);
}