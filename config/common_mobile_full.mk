# Inherit common Lineage stuff
$(call inherit-product, vendor/flare/config/common_mobile.mk)

PRODUCT_SIZE := full

# Apps
ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/flare/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/flare/overlay/dictionaries
