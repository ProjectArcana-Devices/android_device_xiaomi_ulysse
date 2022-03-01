#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common Arcana stuff.
$(call inherit-product, vendor/aosp/common.mk)
ARCANA_MAINTAINER := LaLeeroy
ARCANA_OFFICIAL := true
TARGET_BOOT_ANIMATION_RES := 720
PREBUILT_LAWNCHAIR := true
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit from ulysse device
$(call inherit-product, device/xiaomi/ulysse/device.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-aosp

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ulysse
PRODUCT_NAME := aosp_ulysse
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 5A / Y1
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.220205.003 8069835 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/raven/raven:12/SQ1D.220205.003/8069835:user/release-keys"
