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
