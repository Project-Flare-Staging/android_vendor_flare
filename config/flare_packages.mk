# Charger
PRODUCT_PACKAGES += \
    custom_charger_animation \
    custom_charger_animation_vendor

# Cloned app exemption
PRODUCT_COPY_FILES += \
    vendor/flare/prebuilt/common/etc/sysconfig/preinstalled-packages-platform-crdroid-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-platform-crdroid-product.xml

# Enable some aosp packages allowlist
PRODUCT_PACKAGES += initial-package-stopped-states-aosp.xml

# Extra packages
PRODUCT_PACKAGES += \
    BatteryStatsViewer \
    OmniJaws \
    OmniStyle

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.manager@1.0.vendor

# Overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/flare/overlay/common_pixel

PRODUCT_PACKAGES += \
    FrameworkOverlayPixel \
    SettingsOverlayPixel

PRODUCT_PACKAGES += \
    FrameworkOverlayFlare

# Protobuf - Workaround for prebuilt Qualcomm HAL
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-3.9.1-vendorcompat \
    libprotobuf-cpp-lite-3.9.1-vendorcompat

# QTI VNDK Framework Detect
PRODUCT_PACKAGES += \
    libvndfwk_detect_jni.qti \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect_system \
    libqti_vndfwk_detect_vendor \
    libvndfwk_detect_jni.qti_system \
    libvndfwk_detect_jni.qti_vendor \
    libvndfwk_detect_jni.qti.vendor \
    libqti_vndfwk_detect.vendor

# Sensors
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0.vendor

# Telephony - CLO
PRODUCT_PACKAGES += \
    extphonelib \
    extphonelib-product \
    extphonelib.xml \
    extphonelib_product.xml \
    ims-ext-common \
    ims_ext_common.xml

ifneq ($(TARGET_NO_TELEPHONY), true)
PRODUCT_PACKAGES += \
    tcmiface \
    telephony-ext \
    qti-telephony-hidl-wrapper \
    qti-telephony-hidl-wrapper-prd \
    qti_telephony_hidl_wrapper.xml \
    qti_telephony_hidl_wrapper_prd.xml \
    qti-telephony-utils \
    qti-telephony-utils-prd \
    qti_telephony_utils.xml \
    qti_telephony_utils_prd.xml

PRODUCT_BOOT_JARS += \
    tcmiface \
    telephony-ext
endif
