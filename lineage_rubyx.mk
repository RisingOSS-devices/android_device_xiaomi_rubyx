#
# SPDX-FileCopyrightText: 2023-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rubyx/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rubyx
PRODUCT_DEVICE := rubyx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ruby

PRODUCT_SYSTEM_NAME := ruby_global
PRODUCT_SYSTEM_DEVICE := ruby

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ruby-user 14 UP1A.230620.001 V816.0.10.0.UMOMIXM release-keys" \
    BuildFingerprint=Redmi/ruby_global/ruby:14/UP1A.230620.001/V816.0.10.0.UMOMIXM:user/release-keys

# ViPER4Android (if exists)
$(call inherit-product-if-exists, packages/apps/ViPER4AndroidFX/config.mk)

# BCR (Basic Call Recorder) 
$(call inherit-product, vendor/bcr/bcr.mk)

# Dolby
PRODUCT_PACKAGES += \
    XiaomiDolby.rubyx

PRODUCT_PACKAGES += \
    EvolutionSettingsOverlayRuby