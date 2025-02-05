# Copyright 2014 The Android Open Source Project
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

# Common
include device/motorola/targets/include/common.mk

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Kernel
$(call inherit-product, device/motorola/targets/include/kernel/source.mk)

# Libhidl
PLATFORM_PROVIDES_LIBHIDL := true

## risingOS-Flags
# Ship Basic Call Recorder
TARGET_PREBUILT_BCR := true
# Addons
TARGET_HAS_UDFPS := true
# Gms 
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true
# Lawnchair Prebuilt
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := false
# rising Maintainer
RISING_MAINTAINER=AldairSoraki
PRODUCT_GMS_CLIENTID_BASE := android-motorola
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingMaintainer="AldairSoraki" \
    RisingChipset="SM6125"

# Required Scripts
$(warning This ROM requires replace_camera_sepolicy.sh to be ran...)

PRODUCT_NAME := lineage_$(DEVICE)
