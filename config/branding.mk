#
# Copyright (C) 2018-2022 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Set date and time
BUILD_DATE := $(shell date +%Y%m%d)

## Versioning System
# Set all versions
STATIX_BASE_VERSION := v7.5
STATIX_PLATFORM_VERSION := $(PLATFORM_VERSION)

ifndef STATIX_BUILD_TYPE
    STATIX_BUILD_TYPE := UNOFFICIAL
endif

STATIX_VERSION := $(TARGET_PRODUCT)-$(BUILD_DATE)-$(STATIX_PLATFORM_VERSION)-$(STATIX_BASE_VERSION)-$(STATIX_BUILD_TYPE)

# Fingerprint
ROM_FINGERPRINT := StatiXOS/$(PLATFORM_VERSION)/$(STATIX_BUILD_TYPE)/$(BUILD_DATE)
# Declare it's a StatiX build
STATIX_BUILD := true

## Signing
ifneq (eng,$(TARGET_BUILD_VARIANT))
# Display a cleaner build number even on userdebug builds
ifeq (userdebug,$(TARGET_BUILD_VARIANT))
DISPLAY_ID := $(BUILD_ID)-$(TARGET_BUILD_VARIANT) $(BUILD_KEYS)
endif

# Release keys
ifneq (,$(wildcard vendor/statix/build/target/product/security/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/statix/build/target/product/security/releasekey
# OEM unlock
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
# Strip build keys info from display ID
ifeq (userdebug,$(TARGET_BUILD_VARIANT))
DISPLAY_ID := $(BUILD_ID)-$(TARGET_BUILD_VARIANT)
else
DISPLAY_ID := $(BUILD_ID)
endif
endif

# Override display ID with the final value
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID="$(DISPLAY_ID)"

# OTA keys
ifneq (,$(wildcard vendor/statix/build/target/product/security/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/statix/build/target/product/security/otakey.x509.pem
endif
endif
