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
ifeq (pa_tate,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/amazon/tate/full_tate.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_tate
PRODUCT_BRAND := google
PRODUCT_MODEL := Kindle Fire HD 7
PRODUCT_MANUFACTURER := android
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=full_tate TARGET_DEVICE=tate BUILD_FINGERPRINT="Android/tate/tate:4.0.3/IML74K/7.2.2_user_2218220:user/release-keys" PRIVATE_BUILD_DESC="tate-user 4.0.3 IML74K 7.2.2_user_2218220 release-keys"


endif
