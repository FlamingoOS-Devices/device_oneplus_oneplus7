#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
-include device/oneplus/sm8150-common/BoardConfigCommon.mk

BOARD_VENDOR := oneplus
DEVICE_PATH := device/oneplus/oneplus7

# Display
TARGET_SCREEN_DENSITY := 420

# Sensors
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_X := 660
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_Y := 130
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS += DOUBLE_TAP_PATH
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_DOUBLE_TAP_PATH := /sys/devices/platform/soc/c80000.i2c/i2c-5/5-0020/double_tap_pressed
