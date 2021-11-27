$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/xcover3velte/overlay

LOCAL_PATH := device/samsung/xcover3velte
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/init.recovery.samsungexynos3475.rc:root/init.recovery.samsungexynos3465.rc \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab
    

$(call inherit-product, build/target/product/embedded.mk)

PRODUCT_NAME := omni_xcover3velte
PRODUCT_DEVICE := xcover3velte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := xcover3velte
