#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/merlinx/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Debugging Flags
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := false

# Evolution X flags
EVO_BUILD_TYPE := COMMUNITY

# Another stuff
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_EPPE := true

# Pixel customization
TARGET_USE_PIXEL_FRAMEWORK := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

PRODUCT_NAME := evolution_merlinx
PRODUCT_DEVICE := merlinx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="merlin-user 11 RP1A.200720.011 V12.5.4.0.RJOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/merlin/merlin:11/RP1A.200720.011/V12.5.4.0.RJOMIXM:user/release-keys
