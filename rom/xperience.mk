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

# Inherit some common XPerience stuff.
$(call inherit-product, vendor/xperience/config/common.mk)

# Kernel
$(call inherit-product, device/motorola/targets/include/kernel/source.mk)

# Libhidl
PLATFORM_PROVIDES_LIBHIDL := true

# Required Scripts
$(warning This ROM requires replace_camera_sepolicy.sh to be ran...)

# Xperience Flags
XPERIENCE_MAINTAINER := AldairSoraki
#XPERIENCE_CHIPSET := "Snapdragon® 665 Mobile Platform"
XPERIENCE_BATTERY := "5000mAh (Li-Poly)"
XPERIENCE_DISPLAY := "720*1560 (65Hz)"
WITH_GAPPS := true
TARGET_ESSENTIAL_GAPPS := true

PRODUCT_NAME := xperience_$(DEVICE)
