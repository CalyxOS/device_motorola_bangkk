#
# SPDX-FileCopyrightText: 2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from device
$(call inherit-product, device/motorola/bangkk/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := calyx_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bangkk_g-user 14 U1TCS34.22-64-19-4-2 305d4a-9c98b release-keys" \
    BuildFingerprint=motorola/bangkk_g/bangkk:14/U1TCS34.22-64-19-4-2/305d4a-9c98b:user/release-keys \
    DeviceProduct=bangkk_g
