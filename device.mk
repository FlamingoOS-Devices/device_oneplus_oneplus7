#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml

PRODUCT_PACKAGES += \
    FlamingoOPlus7Frameworks \
    FlamingoOPlus7SystemUI \
    OPlus7Settings \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSystemUIResTarget

# Stock fingerprint for ARCore
PRODUCT_SYSTEM_PROPERTIES += \
    ro.stock.build.fingerprint=OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202210120500:user/release-keys

# Bluetooth
PRODUCT_VENDOR_PROPERTIES += \
    bluetooth.device.default_name=OnePlus 7

# Shipping API
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/oneplus7/oneplus7-vendor.mk)
