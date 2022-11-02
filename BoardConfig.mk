#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
-include device/oneplus/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/oneplus7

# Display
TARGET_SCREEN_DENSITY := 420

# Sensors
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_X := 660
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_Y := 130

# Firmware
-include vendor/oneplus/firmware/BoardConfigVendor.mk

# Include the proprietary files BoardConfig.
-include vendor/oneplus/oneplus7/BoardConfigVendor.mk
