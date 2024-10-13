#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from KH7 device
$(call inherit-product, device/tecno/KH7/device.mk)

PRODUCT_DEVICE := KH7
PRODUCT_NAME := twrp_KH7
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KH7
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_kh7n_h6919-user 12 SP1A.210812.016 585039 release-keys"

BUILD_FINGERPRINT := TECNO/KH7-OP/TECNO-KH7:12/SP1A.210812.016/240416V621:user/release-keys
