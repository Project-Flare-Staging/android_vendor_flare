# Inherit flare packages
$(call inherit-product, vendor/flare/config/flare_packages.mk)

# Inherit flare properties
$(call inherit-product, vendor/flare/config/flare_properties.mk)

# Qualcomm Common
$(call inherit-product, device/qcom/common/common.mk)
