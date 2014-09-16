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

ifeq (pa_d620,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/d620/full_d620.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d620
PRODUCT_NAME := full_d620
PRODUCT_BRAND := lge
PRODUCT_MODEL := d620
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d620 BUILD_FINGERPRINT=lge/g2m_global_com/g2m:4.4.2/KOT49I.A1401238405/1401238405:user/release-keys PRIVATE_BUILD_DESC="g2m_global_com-user 4.4.2 KOT49I.A1401238405 1401238405 release-keys"

endif
