# Copyright (C) 2012 ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_jem,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/amazon/jem/full_jem.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/pa/packages/jem.mk

# CM Package Extras
-include vendor/pa/packages/cm.mk

# Override AOSP build properties
PRODUCT_NAME := pa_jem
PRODUCT_BRAND := google
PRODUCT_MODEL := Kindle Fire HD 8.9
PRODUCT_MANUFACTURER := android
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=full_jem TARGET_DEVICE=jem BUILD_FINGERPRINT="Android/tate/tate:4.0.3/IML74K/7.2.2_user_2218220:user/release-keys" PRIVATE_BUILD_DESC="tate-user 4.0.3 IML74K 7.2.2_user_2218220 release-keys"

# Update local_manifest.xml
GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))
GET_PROJECT_RMS := $(shell vendor/pa/tools/removeprojects.py $(PRODUCT_NAME))
GET_PROJECT_ADDS := $(shell vendor/pa/tools/addprojects.py $(PRODUCT_NAME))
GET_CM_PROJECT_ADDS := $(shell vendor/pa/tools/addprojects.py cm.adds)

endif
