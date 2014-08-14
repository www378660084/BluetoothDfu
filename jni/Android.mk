LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# our own branch needs these headers
LOCAL_C_INCLUDES += 
LOCAL_C_INCLUDES += D:/Android-include/4.0/framework-include 
LOCAL_C_INCLUDES += D:/Android-include/4.0/system-include
LOCAL_C_INCLUDES += D:/Android-include/4.0/hardware-include
LOCAL_MODULE_TAGS := optional

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)


LOCAL_SHARED_LIBRARIES := liblog \
						  libcutils \
						  libhardware 
						
						  
LOCAL_LDLIBS:=  -L$(SYSROOT)/usr/lib -llog 

LOCAL_SRC_FILES := btdfu.c \
				   DFU_WorkFlow.c \
				   DFU.c \
				   BCCMD.c \
				   BCSP.c \
				   serial.c \
				   main.c
				   
				   
LOCAL_MODULE := btdfu
#include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)