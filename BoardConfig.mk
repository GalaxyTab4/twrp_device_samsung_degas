# degaswifi

# Architecture
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := mrvl
TARGET_BOOTLOADER_BOARD_NAME := PXA1088
#TARGET_OTA_ASSERT_DEVICE := degaswifi
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

# Flags
COMMON_GLOBAL_CFLAGS += -DMRVL_HARDWARE
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

BOARD_HARDWARE_CLASS += hardware/samsung/cmhw
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/degaswifi

# Graphics
USE_OPENGL_RENDERER := true
BOARD_USE_BGRA_8888 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "charger"
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.mrvl

# Target info
USE_CAMERA_STUB := true

# MRVL hardware
BOARD_USES_MRVL_HARDWARE := true

# Graphics
BOARD_USES_MRVL_HARDWARE := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_OPENGL_RENDERER := true
ENABLE_HWC_GC_PATH := true

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/degaswifi/recovery/kernel
TARGET_KERNEL_SOURCE := kernel/samsung/degaswifi
#TARGET_KERNEL_CONFIG := twrp_degaswifi_defconfig
BOARD_KERNEL_BASE := 0x10000000
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/degaswifi/degaswifi_mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/degaswifi/recovery/dt.img --ramdisk_offset 0x01000000
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_PAGESIZE := 2048
    
# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2224029696
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5230297088
BOARD_FLASH_BLOCK_SIZE := 4096

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true 
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/soc.2/d4200000.axi/mv-udc/gadget/lun0/file"

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/degaswifi/recovery/recovery.fstab
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_SUPPRESS_SECURE_ERASE := true
#TARGET_RECOVERY_INITRC := device/samsung/degaswifi/recovery/recovery/init.rc


#TWRP
#RECOVERY_VARIANT := twrp
TW_CUSTOM_THEME := device/samsung/degaswifi/recovery/twmat
#TW_THEME := portrait_hdpi
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NEW_ION_HEAP := true
#TW_SCREEN_BLANK_ON_BOOT := true
#TW_HAS_MTP := true

# MultiROM config. MultiROM also uses parts of TWRP config
#MR_INPUT_TYPE := type_b
#MR_INIT_DEVICES := device/samsung/degaswifi/recovery/mr_init_devices.c
#MR_DPI := hdpi
#MR_MUL := 1.5
#MR_FSTAB := device/samsung/degaswifi/recovery.fstab
#MR_USE_MROM_FSTAB := true
# MR_DEVICE_VARIANTS := degas degasue degaswifi degaswifiue
#                    0x885fffff
#MR_KEXEC_MEM_MIN := 0x85000000
#                   0x07dfffff
#MR_KEXEC_MEM_MIN := 0x078fffff




