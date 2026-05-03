WITH_GMS := true

# Pixel GMS
$(call inherit-product, vendor/pixel/gms/products/gms.mk)

# Pixel GSans
$(call inherit-product, vendor/pixel/gsans/products/gsans.mk)

# Pixel Launcher
$(call inherit-product, vendor/pixel/launcher/products/launcher.mk)

# Pixel Sounds
$(call inherit-product, vendor/pixel/sounds/products/sounds.mk)

# Pixel ThemePicker
$(call inherit-product, vendor/pixel/themepicker/products/themepicker.mk)
