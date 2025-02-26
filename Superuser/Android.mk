LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_JAVA_LIBRARIES := org.apache.http.legacy junit

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4
LOCAL_PACKAGE_NAME := Superuser
LOCAL_SRC_FILES := $(call all-java-files-under,src) $(call all-java-files-under,../../Widgets/Widgets/src)

LOCAL_AAPT_INCLUDE_ALL_RESOURCES := true
LOCAL_AAPT_FLAGS := --extra-packages com.koushikdutta.widgets -S $(LOCAL_PATH)/../../Widgets/Widgets/res --auto-add-overlay --rename-manifest-package $(SUPERUSER_PACKAGE) --no-version-vectors

include $(BUILD_PACKAGE)
