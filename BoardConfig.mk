USE_CAMERA_STUB := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
USE_PROPRIETARY_AUDIO_EXTENSIONS := true

# ICS AUDIO
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB

# ICS CAMERA
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# inherit from the proprietary version
-include vendor/lenovo/k1/BoardConfigVendor.mk

# Board nameing
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := ventana

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true

# Boot/Recovery image settings  
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28139061248
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USES_LEGACY_RIL := true

# Todo fix these values to the spacific sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p3
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p7
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p4
BOARD_CACHE_FILESYSTEM := ext4

# Build kernel from source
#TARGET_KERNEL_CONFIG := cm10_k1_defconfig
#TARGET_KERNEL_SOURCE := kernel/lenovo/k1

# Prebuilt Kernel Fallback
TARGET_PREBUILT_KERNEL := device/lenovo/k1/kernel

# Recovery Keymapping 
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lenovo/k1/recovery/recovery_keys.c
TARGET_RECOVERY_PRE_COMMAND := "/system/bin/misc_command FOTA"

# Wifi related defines
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA         := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP          := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0 firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/nvram.txt"
WIFI_BAND 			:= 802_11_ABG

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Audio Build Options
BOARD_USES_AUDIO_LEGACY := true
BOARD_USES_GENERIC_AUDIO := false

BOARD_HAVE_GPS := true

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := vendor/lenovo/k1/proprietary/lib/egl/egl.cfg

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

#Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true
