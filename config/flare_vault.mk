# Inherit flare packages
$(call inherit-product, vendor/flare/config/flare_packages.mk)

# Inherit flare properties
$(call inherit-product, vendor/flare/config/flare_properties.mk)

# Qualcomm Common
$(call inherit-product, device/qcom/common/common.mk)

# Snapdragon Clang
$(call inherit-product, vendor/qcom/sdclang/config/SnapdragonClang.mk)

# Enable support for APEX updates
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
