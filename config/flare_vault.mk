# Inherit flare packages
$(call inherit-product, vendor/flare/config/flare_packages.mk)

# Inherit flare properties
$(call inherit-product, vendor/flare/config/flare_properties.mk)

# Bootanimation
$(call inherit-product, vendor/flare/bootanimation/bootanimation.mk)

# Qualcomm Common
$(call inherit-product, device/qcom/common/common.mk)

# Snapdragon Clang
$(call inherit-product, vendor/qcom/sdclang/config/SnapdragonClang.mk)

# Include Pixel GMS
include vendor/flare/config/pixel.mk

# Call Recording
TARGET_CALL_RECORDING_SUPPORTED ?= true

ifneq ($(TARGET_CALL_RECORDING_SUPPORTED),false)
PRODUCT_COPY_FILES += \
    vendor/flare/config/permissions/com.google.android.apps.dialer.call_recording_audio.features.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.apps.dialer.call_recording_audio.features.xml
endif

# Google Photos Pixel Exclusive XML
PRODUCT_COPY_FILES += \
    vendor/flare/prebuilt/common/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml
