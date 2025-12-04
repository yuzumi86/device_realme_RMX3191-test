#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/RMX3191/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_RMX3191
PRODUCT_DEVICE := RMX3191
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme c25

PRODUCT_GMS_CLIENTID_BASE := android-realme

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX3191 \
    PRODUCT_NAME=RMX3191 \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 13 TP1A.220905.001 1690960746577 release-keys"

BuildFingerprint=realme/RMX3430/RED8AF:13/SP1A.210812.016/R.182c3f7_cf1b8:user/release-keys \