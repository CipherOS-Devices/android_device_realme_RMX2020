#
# Copyright (C) 2018-2022 ArrowOS
# Copyright (C) 2023 The CipherOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit from Cipher Common
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

# CipherOS specific flags
# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720
# Faceunlock Support
TARGET_FACE_UNLOCK_SUPPORTED := true
# Maintainer
CIPHER_MAINTAINER := sarthakroy2002
# GMS
CIPHER_GAPPS := true
# Battery Info
CIPHER_BATTERY := 5000
# Screen Size
CIPHER_SCREEN :=  6.5
# Enable Blurs
CIPHER_BLUR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cipher_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2020
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_MODEL := RMX2020
PRODUCT_SYSTEM_NAME := RMX2020
PRODUCT_SYSTEM_DEVICE := RMX2020

# Build info
BUILD_FINGERPRINT := realme/RMX2020/RMX2020:10/QP1A.190711.020/1651798546:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="full_oppo6769-user 10 QP1A.190711.020 68b77aba7cb33275 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
