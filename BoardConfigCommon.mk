#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := false
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x30000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := console=ttyFIQ0 no_console_suspend

TARGET_NO_KERNEL := false

TARGET_NO_RADIOIMAGE := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_BOARD_PLATFORM := s5pc110
TARGET_BOOTLOADER_BOARD_NAME := herring

TARGET_SEC_INTERNAL_STORAGE := false

USE_CAMERA_STUB := false
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

DEFAULT_FB_NUM := 2

BOARD_NAND_PAGE_SIZE := 4096 -s 128

TARGET_RECOVERY_UI_LIB := librecovery_ui_crespo
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/crespo

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 4096

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_HOSTAPD_DRIVER        := WEXT
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_wext
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcm4329/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH     := "/system/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     :=  "bcm4329"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/vendor/firmware/nvram_net.txt iface_name=wlan"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

