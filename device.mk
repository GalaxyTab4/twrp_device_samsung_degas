LOCAL_PATH := device/samsung/degaswifi

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/sbin/lpm:root/sbin/lpm \
    $(LOCAL_PATH)/recovery/sbin/sysinit:root/sbin/sysinit \
    $(LOCAL_PATH)/recovery/etc/profile:root/etc/profile

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := degaswifi
