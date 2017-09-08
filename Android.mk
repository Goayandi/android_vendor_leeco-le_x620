LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),le_x620)

ifeq ($(USE_MTK_CAMERA_WRAPPER),true)
include $(CLEAR_VARS)
LOCAL_MODULE := libcam2halsensor
LOCAL_SRC_FILES_64 := wrapper/lib64/libcam2halsensor.so
LOCAL_SRC_FILES_32 := wrapper/lib/libcam2halsensor.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcameracustom
LOCAL_SRC_FILES_64 := wrapper/lib64/libcameracustom.so
LOCAL_SRC_FILES_32 := wrapper/lib/libcameracustom.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := libmtkcamera_client
LOCAL_SRC_FILES_64 := system/lib64/libmtkcamera_client.so
LOCAL_SRC_FILES_32 := system/lib/libmtkcamera_client.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libhwm
LOCAL_SRC_FILES_64 := system/lib64/libhwm.so
LOCAL_SRC_FILES_32 := system/lib/libhwm.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcustom_prop
LOCAL_SRC_FILES_64 := system/lib64/libcustom_prop.so
LOCAL_SRC_FILES_32 := system/lib/libcustom_prop.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_OWNER := $VENDOR
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := 64
LOCAL_SRC_FILES_64 := system/lib64/libdpframework.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_OWNER := mtk
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES_32 := system/lib/libdpframework.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libion_mtk
LOCAL_SRC_FILES_64 := system/lib64/libion_mtk.so
LOCAL_SRC_FILES_32 := system/lib/libion_mtk.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

endif
