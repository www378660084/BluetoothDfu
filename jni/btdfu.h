#ifndef __BT_DFU_JS_H__
#define __BT_DFU_JS_H__

int set_bt_dfu(char* port,char* updateFilePath,unsigned int initBaudRate,unsigned int speedBaudRate);
unsigned char read_bt_dfu_schedule(void);

#endif