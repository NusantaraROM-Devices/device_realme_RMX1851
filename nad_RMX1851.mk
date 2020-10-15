#
# Copyright (C) 2018 The Android Open-Source Project
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
#

# Inherit some common Nusantara stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
$(call inherit-product, device/realme/RMX1851/device.mk)

$(call inherit-product-if-exists, packages/apps/NusantaraParts/nadproject.mk)

PRODUCT_WANTS_QTI_SIM_SETTINGS := true
TARGET_BOOT_ANIMATION_RES := 1080
USE_PIXEL_CHARGING := true

PRODUCT_NAME := nad_RMX1851
PRODUCT_DEVICE := RMX1851
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 3 Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=RMX1851 \
    PRIVATE_BUILD_DESC="sdm710-user 10 QKQ1.190918.001 release-keys"

NAD_BUILD_TYPE := OFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-realme
