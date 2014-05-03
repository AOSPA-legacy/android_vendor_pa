# Copyright (C) 2014 CrystalPA Project
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

ifeq (cpa_d605,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := cpa_xhdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/cpa/configs/telephony.mk)

# Include CPA common configuration
include vendor/cpa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/d605/full_d605.mk)

# Override AOSP build properties
PRODUCT_DEVICE := d605
PRODUCT_NAME := cpa_d605
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D605
PRODUCT_MANUFACTURER := LGE

# override
#PRODUCT_BUILD_PROP_OVERRIDES += \
    #BUILD_NUMBER=144808 \
    #PRODUCT_NAME=p705 \
    #TARGET_BUILD_TYPE=user \
    #BUILD_VERSION_TAGS=release-keys \
    #PRIVATE_BUILD_DESC="p705-user 4.4.2 KVT49L 144808 release-keys" \
    #BUILD_FINGERPRINT="lge/p705/4.4.2/KVT49L/144808:user/release-keys"
endif
