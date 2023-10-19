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

# Signing
ifeq (user,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard .keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := .keys/releasekey
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
ifneq (,$(wildcard .keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := .keys/otakey.x509.pem
endif
endif
