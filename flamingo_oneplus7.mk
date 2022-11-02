#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from oneplus7 device
$(call inherit-product, device/oneplus/oneplus7/device.mk)

# Inherit from the FLAMINGO configuration.
$(call inherit-product, vendor/flamingo/target/product/flamingo.mk)

# Inherit OnePlus firmware
$(call inherit-product, vendor/oneplus/firmware/Android.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := flamingo_oneplus7
PRODUCT_DEVICE := oneplus7
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1901
PRODUCT_BRAND := OnePlus

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_SYSTEM_NAME := OnePlus7
PRODUCT_SYSTEM_DEVICE := OnePlus7

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7-user 12 SKQ1.211113.001 P.202210120500 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202210120500:user/release-keys
