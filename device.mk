PRODUCT_NAME := degaswifi

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/degaswifi/recovery/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/fstab.pxa1088:root/fstab.pxa1088 \
    $(LOCAL_PATH)/recovery/init.recovery.pxa1088.rc:root/init.recovery.pxa1088.rc \
    $(LOCAL_PATH)/recovery/sbin/lpm:root/sbin/lpm \
    $(LOCAL_PATH)/recovery/sbin/sysinit:root/sbin/sysinit

$(call inherit-product, build/target/product/full.mk)


