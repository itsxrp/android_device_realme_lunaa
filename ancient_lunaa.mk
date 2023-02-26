# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lunaa device
$(call inherit-product, device/realme/lunaa/device.mk)

# Inherit some common Ancient Stuff
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

#Ancient Stuff
EXTRA_UDFPS_ANIMATIONS := true
ANCIENT_OFFICIAL=true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
IS_PHONE := true
ANCIENT_GAPPS := true
TARGET_GAPPS_ARCH := arm64
FORCE_NEXUSLAUNCHER := true
PIXEL_STUFF := true

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := ancient_lunaa
PRODUCT_DEVICE := lunaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3360

PRODUCT_SYSTEM_NAME := RE54ABL1
PRODUCT_SYSTEM_DEVICE := RE54ABL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 13 TQ1A.230205.002 9471150 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := google/redfin/redfin:13/TQ1A.230205.002/9471150:user/release-keys
