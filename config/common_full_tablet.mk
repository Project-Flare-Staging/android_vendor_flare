# Inherit mobile full common Lineage stuff
$(call inherit-product, vendor/flare/config/common_mobile_full.mk)

# Inherit tablet common Lineage stuff
$(call inherit-product, vendor/flare/config/tablet.mk)

$(call inherit-product, vendor/flare/config/telephony.mk)
