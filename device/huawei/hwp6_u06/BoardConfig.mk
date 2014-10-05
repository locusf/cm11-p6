BOARD_VENDOR := Huawei

USE_CAMERA_STUB := false

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# inherit from the proprietary version
include vendor/huawei/hwp6_u06/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := k3v2oem1
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon

TARGET_BOOTLOADER_BOARD_NAME := hwp6_u06
TARGET_BOARD_PLATFORM := k3v2oem1

# Local flag
BOARD_USE_K3V2OEM1 := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Wifi
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X_TI
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
PRODUCT_WIRELESS_TOOLS           := true
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlcore_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wlcore_sdio"
WIFI_FIRMWARE_LOADER             := ""
BOARD_WIFI_SKIP_CAPABILITIES     := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_TI := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/hwp6_u06/bluetooth

TARGET_PREBUILT_KERNEL := device/huawei/hwp6_u06/kernel

BOARD_HAL_STATIC_LIBRARIES += libhealthd.k3v2oem1

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage

# Graphics
BOARD_EGL_CFG := device/huawei/hwp6_u06/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH

# Camera
BOARD_CAMERA_HAVE_ISO := true

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/hwp6_u06/ril/

# Misc
BOARD_NEEDS_CUTILS_LOG := true
BOARD_SCREENRECORD_DEVICE_FORCE_AUDIO_MIC := true
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_USES_SECURE_SERVICES := true
TARGET_USES_PMEM := true
TARGET_USES_ION := false

# Kernel
BOARD_KERNEL_CMDLINE := vmalloc=384M k3v2_pmem=1 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(splash2),p10(recovery2),p11(recovery),p12(boot),p13(modemimage),p14(modemnvm1),p15(modemnvm2),p16(system),p17(cache),p18(cust),p19(userdata);mmcblk1:p1(ext_sdcard)
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01400000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5255462912

TARGET_OTA_ASSERT_DEVICE := hwp6_u06,hwp6-u06,P6-U06

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
BOARD_VOLD_MAX_PARTITIONS := 19

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_TOUCH_RECOVERY := 
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_8888"
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LOCKED_BOOTLOADER := true
RECOVERY_FSTAB_VERSION := 2
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/hwp6_u06/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/huawei/hwp6_u06/recovery/recovery.fstab
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

BOARD_RECOVERY_SWIPE := true

TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/hwp6_u06/recovery-kernel
TARGET_RECOVERY_INITRC := device/huawei/hwp6_u06/recovery/init.rc

#TWRP
HAVE_SELINUX := true

TW_MAX_BRIGHTNESS := 255
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true

TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"

RECOVERY_SDCARD_ON_DATA := true 
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true

TW_BRIGHTNESS_PATH := "/sys/devices/platform/k3_fb.1/leds/lcd_backlight0/brightness"
