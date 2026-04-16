# Inherit mobile mini common Lineage stuff
$(call inherit-product, vendor/flare/config/common_mobile_mini.mk)

# Inherit tablet common Lineage stuff
$(call inherit-product, vendor/flare/config/tablet.mk)

$(call inherit-product, vendor/flare/config/wifionly.mk)
