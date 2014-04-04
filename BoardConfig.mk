# inherit from the proprietary version
-include vendor/htc/m8whl/BoardConfigVendor.mk

# Arch
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := m8whl

# Kernel Parameters
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02008000 --tags_offset 0x01e00000

# Build kernel from source and use DTB
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_CONFIG := m8whl_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/m8whl

# fix this up by examining /proc/emmc on a running device
#mmcblk0p1: 00100000  00000200  "sbl1"
#mmcblk0p2: 076f7c00  00000200  "pg1fs"
#mmcblk0p3: 00004000  00000200  "board_info"
#mmcblk0p4: 00800000  00000200  "reserve_1"
#mmcblk0p5: 00040000  00000200  "mfg"
#mmcblk0p6: 017afc00  00000200  "pg2fs"
#mmcblk0p7: 00040000  00000200  "sbl1_update"
#mmcblk0p8: 00040000  00000200  "rpm"
#mmcblk0p9: 00200000  00000200  "tz"
#mmcblk0p10: 00008000  00000200  "sdi"
#mmcblk0p11: 00400000  00000200  "hboot"
#mmcblk0p12: 00500000  00000200  "sp1"
#mmcblk0p13: 00100000  00000200  "wifi"
#mmcblk0p14: 00008000  00000200  "ddr"
#mmcblk0p15: 00100000  00000200  "dsps"
#mmcblk0p16: 03c00400  00000200  "adsp"
#mmcblk0p17: 00500000  00000200  "wcnss"
#mmcblk0p18: 00800000  00000200  "radio_config"
#mmcblk0p19: 00180000  00000200  "fsg"
#mmcblk0p20: 04b00400  00000200  "radio"
#mmcblk0p21: 00400000  00000200  "tool_diag"
#mmcblk0p22: 03200000  00000200  "custdata"
#mmcblk0p23: 00effc00  00000200  "reserve_2"
#mmcblk0p24: 00100000  00000200  "misc"
#mmcblk0p25: 00180000  00000200  "modem_st1"
#mmcblk0p26: 00180000  00000200  "modem_st2"
#mmcblk0p27: 01400000  00000200  "fataldevlog"
#mmcblk0p28: 00001000  00000200  "debug_config"
#mmcblk0p29: 00040000  00000200  "pdata"
#mmcblk0p30: 00004000  00000200  "control"
#mmcblk0p31: 00140400  00000200  "local"
#mmcblk0p32: 00010000  00000200  "extra"
#mmcblk0p33: 00100000  00000200  "cdma_record"
#mmcblk0p34: 00000400  00000200  "fsc"
#mmcblk0p35: 00002000  00000200  "ssd"
#mmcblk0p36: 00040000  00000200  "skylink"
#mmcblk0p37: 01900000  00000200  "carrier"
#mmcblk0p38: 00040000  00000200  "sensor_hub"
#mmcblk0p39: 01e00000  00000200  "devlog"
#mmcblk0p40: 00002800  00000200  "cir_img"
#mmcblk0p41: 02de6000  00000200  "reserve"
#mmcblk0p42: 01000000  00000200  "boot"
#mmcblk0p43: 01800000  00000200  "recovery"
#mmcblk0p44: 05800000  00000200  "reserve_3"
#mmcblk0p45: a8000000  00000200  "system"
#mmcblk0p46: 18000000  00000200  "cache"
#mmcblk0p47: 58000000  00000200  "userdata"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xa8000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x58000000
BOARD_FLASH_BLOCK_SIZE := 512

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

# TWRP config
DEVICE_RESOLUTION := 1080x1920
TW_INCLUDE_DUMLOCK := true
TW_NO_USB_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"
