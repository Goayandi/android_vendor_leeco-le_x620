LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),le_x620)

include $(CLEAR_VARS)
LOCAL_MODULE := libion_mtk
LOCAL_SRC_FILES_64 := system/lib64/libion_mtk.so
LOCAL_SRC_FILES_32 := system/lib/libion_mtk.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_SRC_FILES_64 := system/lib64/libdpframework.so
LOCAL_SRC_FILES_32 := system/lib/libdpframework.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := LetvRemoteControl_preinstall
LOCAL_SRC_FILES := app/LetvRemoteControl_preinstall/LetvRemoteControl_preinstall.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := UEIQuicksetSDKLeTV
LOCAL_SRC_FILES := app/UEIQuicksetSDKLeTV/UEIQuicksetSDKLeTV.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)


endif
