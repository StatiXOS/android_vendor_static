# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/statix/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES += \
    vendor/statix/prebuilt/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    CellBroadcastReceiver
