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

# Use signing keys and don't print date & time in the final zip for official builds
ifndef STATIX_BUILD_TYPE
    STATIX_BUILD_TYPE := UNOFFICIAL
endif

ifneq ($(filter OFFICIAL UpsideDownCake UPSIDEDOWNCAKE,$(STATIX_BUILD_TYPE)),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := ./.keys/releasekey
endif

STATIX_VERSION := $(TARGET_PRODUCT)-$(BUILD_DATE)-$(STATIX_PLATFORM_VERSION)-$(STATIX_BASE_VERSION)-$(STATIX_BUILD_TYPE)

# Fingerprint
ROM_FINGERPRINT := StatiXOS/$(PLATFORM_VERSION)/$(STATIX_BUILD_TYPE)/$(BUILD_DATE)
# Declare it's a StatiX build
STATIX_BUILD := true
