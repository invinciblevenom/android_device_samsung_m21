#
# Copyright (C) 2021 The LineageOS Project
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

DEVICE_PATH := device/samsung/m21

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := m21nsxx,m21xx,m21

# Display
TARGET_SCREEN_DENSITY := 411

# Kernel
BOARD_BOOT_HEADER_NAME := 
TARGET_KERNEL_SOURCE := kernel/samsung/m21
TARGET_KERNEL_CONFIG := 
BOARD_DTBO_CFG := $(DEVICE_PATH)/kernel/m21.cfg

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 
BOARD_CACHEIMAGE_PARTITION_SIZE    := 
BOARD_DTBOIMG_PARTITION_SIZE       := 
ifneq ($(WITH_GMS),true)
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 
endif

BOARD_SUPER_PARTITION_SIZE := 
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := system/product

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.exynos9611

# Inherit common board flags
include device/samsung/universal9610-common/BoardConfigCommon.mk
