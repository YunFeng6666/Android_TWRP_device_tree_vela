#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from vela device
$(call inherit-product, device/xiaomi/vela/device.mk)

PRODUCT_DEVICE := vela
PRODUCT_NAME := omni_vela
PRODUCT_BRAND := Meitu
PRODUCT_MODEL := MI CC 9 Meitu Edition
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vela-user 11 RKQ1.200826.002 V12.5.5.0.RFECNXM release-keys"

BUILD_FINGERPRINT := Meitu/vela/vela:11/RKQ1.200826.002/V12.5.5.0.RFECNXM:user/release-keys
