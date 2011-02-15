USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# inherit from the proprietary version
#-include vendor/lge/thunderg/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := thunderg

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

TARGET_PROVIDES_INIT_TARGET_RC := true

TARGET_USES_OLD_LIBSENSORS_HAL:=true

TARGET_OTA_ASSERT_DEVICE := thunderg

TARGET_NO_BOOTLOADER := true
#TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Using GPSSHIM because our protocol has other version then at hardware/qcom/gps sources available
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true
BOARD_GPS_LIBRARIES := libloc

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# VER_0_6_X does not search networks
WPA_SUPPLICANT_VERSION := VER_0_5_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := wlan0
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME := wireless
## Tethering is not working now
#WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
#WIFI_DRIVER_FW_AP_PATH := "/system/etc/wl/rtecdc-apsta.bin"

BOARD_EGL_CFG := device/lge/thunderg/files/lib/egl/egl.cfg

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderg
BOARD_KERNEL_BASE := 0x12800000
BOARD_PAGE_SIZE := 0x00000800

#dev:    size   erasesize  name
#mtd0: 00440000 00020000 "boot"
#mtd1: 0be00000 00020000 "system"
#mtd2: 00500000 00020000 "recovery"
#mtd3: 002c0000 00020000 "lgdrm"
#mtd4: 00100000 00020000 "splash"
#mtd5: 00180000 00020000 "FOTABIN"
#mtd6: 005c0000 00020000 "FOTA"
#mtd7: 00040000 00020000 "misc"
#mtd8: 04000000 00020000 "cache"
#mtd9: 0c780000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0be00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c780000
BOARD_FLASH_BLOCK_SIZE := 131072

#BOARD_HAS_NO_SELECT_BUTTON := true
WITH_DEXPREOPT := true

#JS_ENGINE := v8

TARGET_PROVIDES_LIBAUDIO := true 
#TARGET_PROVIDES_LIBRIL := true
TARGET_HIDES_QCRIL_FROM_LOGCAT := true
TARGET_USE_CUSTOM LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun"
