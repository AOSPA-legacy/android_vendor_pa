# Copyright (C) 2013 ParanoidAndroid Project
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

ifeq (pa_p705,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/p705/full_p705.mk)

PRODUCT_PACKAGES += Trebuchet

# Override AOSP build properties
PRODUCT_DEVICE := p705
PRODUCT_NAME := pa_p705
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P705
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u0_open_eu BUILD_FINGERPRINT=lge/u0_open_eu/u0:4.0.3/IML74K/lgp700-V10a.20120418.144808:user/release-keys PRIVATE_BUILD_DESC="u0_open_eu-user 4.0.3 IML74K lgp700-V10a.20120418.144808 release-keys"

endif
