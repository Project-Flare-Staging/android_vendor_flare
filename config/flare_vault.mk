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

# Enable support for APEX updates
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include Pixel GMS
$(call inherit-product, vendor/flare/config/pixel.mk)

# Google Photos Pixel Exclusive XML
PRODUCT_COPY_FILES += \
    vendor/flare/prebuilt/common/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml
