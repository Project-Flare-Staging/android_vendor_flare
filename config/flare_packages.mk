# Charger
PRODUCT_PACKAGES += \
    custom_charger_animation \
    custom_charger_animation_vendor

# Enable some aosp packages allowlist
PRODUCT_PACKAGES += initial-package-stopped-states-aosp.xml

# Overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/flare/overlay/common_pixel

PRODUCT_PACKAGES += \
    FrameworkOverlayPixel \
    SettingsOverlayPixel

PRODUCT_PACKAGES += \
    FrameworkOverlayFlare
