#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from lake device
$(call inherit-product, device/xiaomi/lake/device.mk)

PRODUCT_DEVICE := lake
PRODUCT_NAME := omni_lake
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 14C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_lake-eng 99.87.36 SP2A.220405.004 eng.root.20260207.120446 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_lake/lake:99.87.36/SP2A.220405.004/root02071203:eng/test-keys
