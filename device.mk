#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/oneplus/sm8350-common

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_yupikidp.xml:$(TARGET_COPY_OUT_ODM)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_yupikidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_platform_info_yupikidp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_yupikidp.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_yupikidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/mixer_paths_yupikidp.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/sound_trigger_mixer_paths_yupikidp.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/sound_trigger_platform_info.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Display Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/displayconfig/display_id_4630946741972277890.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946741972277890.xml

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc-service.st \
    android.hardware.secure_element@1.2.vendor \
    com.android.nfc_extras \
    SecureElement \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-hal-st.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-hal-st.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-aosp \
    $(LOCAL_PATH)/overlay-elixir

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSystemUIResTarget

# Power
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/powerhint_yupik.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.lunaa \
    als_correction_service.lunaa

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8350-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/realme/lunaa/lunaa-vendor.mk)

# Camera
$(call inherit-product-if-exists, vendor/realme/camera/realmecamera.mk)

#Firmware
$(call inherit-product-if-exists, vendor/firmware/lunaa/firmware.mk)
