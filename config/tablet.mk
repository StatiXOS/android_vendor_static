$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Freeform window management
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.freeform_window_management.xml

# One-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=false

# Settings
PRODUCT_PRODUCT_PROPERTIES += \
    persist.settings.large_screen_opt.enabled=true

# Setup Wizard
PRODUCT_PRODUCT_PROPERTIES += \
    ro.setupwizard.rotation_locked=false
