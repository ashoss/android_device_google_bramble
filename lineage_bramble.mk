#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bramble/aosp_bramble.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/bramble/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_NAME := lineage_bramble

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bramble \
    PRIVATE_BUILD_DESC="bramble-user 14 UP1A.231105.001.B2 11260668 release-keys"

BUILD_FINGERPRINT := google/bramble/bramble:14/UP1A.231105.001.B2/11260668:user/release-keys

$(call inherit-product, vendor/google/bramble/bramble-vendor.mk)
