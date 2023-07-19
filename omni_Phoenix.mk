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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Phoenix device
$(call inherit-product, device/samsung/Phoenix/device.mk)

PRODUCT_DEVICE := Phoenix
PRODUCT_NAME := omni_Phoenix
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G6200
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S88661AA1-user 8.1.0 OPM1.171019.026 G6200ZCU0ARK1 release-keys"

BUILD_FINGERPRINT := samsung/Phoenix/Phoenix:8.1.0/OPM1.171019.026/G6200ZCU0ARK1:user/release-keys
