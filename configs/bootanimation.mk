# Copyright (C) 2014 ParanoidAndroid Project
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

# PA XHDPI Devices
ifneq ($(filter pa_huashan pa_d605,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/pa/prebuilt/bootanimation/1280x720.zip:system/media/bootanimation.zip
endif

# PA HDPI Devices
ifneq ($(filter pa_e610 pa_p700 pa_705,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/pa/prebuilt/bootanimation/800x480.zip:system/media/bootanimation.zip
endif
