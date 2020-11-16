# Fonts
LOCAL_PATH := vendor/statix/fonts
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/ttf,$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# Include google fonts as well
$(call inherit-product, external/google-fonts/fraunces/fonts.mk)
$(call inherit-product, external/google-fonts/karla/fonts.mk)
$(call inherit-product, external/google-fonts/lustria/fonts.mk)
