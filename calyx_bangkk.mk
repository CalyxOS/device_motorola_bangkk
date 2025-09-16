#
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from bangkk device
$(call inherit-product, device/motorola/bangkk/device.mk)

PRODUCT_NAME := calyx_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bangkk_g-user 15 V1TC35H.88-16 c3b1cd-0e8d4 release-keys MV-301" \
    BuildFingerprint=motorola/bangkk_g/bangkk:15/V1TC35H.88-16/c3b1cd-0e8d4:user/release-keys \
    DeviceProduct=bangkk_g
