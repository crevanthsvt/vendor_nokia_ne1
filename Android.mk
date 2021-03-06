LOCAL_PATH := $(call my-dir)

ifneq ($(filter ne1, $(TARGET_DEVICE)),)
include $(CLEAR_VARS)
LOCAL_MODULE := libaudiocustparam
LOCAL_SRC_FILES_32 := vendor/lib/libaudiocustparam.so
LOCAL_SRC_FILES_64 := vendor/lib64/libaudiocustparam.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)
 
include $(CLEAR_VARS)
LOCAL_MODULE = libmtkcam_fwkutils
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = both
LOCAL_SRC_FILES_32 = vendor/lib/libmtkcam_fwkutils.so
LOCAL_SRC_FILES_64 = vendor/lib64/libmtkcam_fwkutils.so
include $(BUILD_PREBUILT)
 
include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = both
LOCAL_SRC_FILES_32 = vendor/lib/libdpframework.so
LOCAL_SRC_FILES_64 = vendor/lib64/libdpframework.so
include $(BUILD_PREBUILT)

endif
