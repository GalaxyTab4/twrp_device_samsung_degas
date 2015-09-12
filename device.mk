LOCAL_PATH := device/samsung/degaswifi

# Charger
PRODUCT_PACKAGES += charger charger_res_images

# ADB BOOT
ADDITIONAL_DEFAULT_PROPERTIES += \
   persist.sys.usb.config=mass_storage,mtp


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/sbin/lpm:root/sbin/lpm

#    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := degaswifi
