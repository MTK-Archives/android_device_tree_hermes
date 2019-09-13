LOCAL_PATH := $(call my-dir)

# libshim_c
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libc.cpp
LOCAL_SHARED_LIBRARIES := libbinder libc
LOCAL_MODULE := libshim_c
LOCAL_CFLAGS := -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# libshim_xlog
include $(CLEAR_VARS)
LOCAL_SRC_FILES := liblog.c
LOCAL_SHARED_LIBRARIES := libbinder liblog
LOCAL_MODULE := libshim_xlog
LOCAL_CFLAGS := -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# libshim_netutils
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libnetutils.cpp
LOCAL_SHARED_LIBRARIES := libbinder libnetutils liblog
LOCAL_MODULE := libshim_netutils
LOCAL_CFLAGS := -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
