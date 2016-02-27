# Copyright (C) 2013 The Android Open Source Project
# Copyright (C) 2013 The CyanogenMod Project
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

ifeq ($(TARGET_DEVICE),kyleve)
ifeq ($(TARGET_BOARD_PLATFORM),hawaii)

LOCAL_PATH := $(call my-dir)

# HAL module implementation, not prelinked and stored in
# hw/<LIGHTS_HARDWARE_MODULE_ID>.<ro.hardware>.so
include $(CLEAR_VARS)

LOCAL_SRC_FILES := lights.c

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

LOCAL_SHARED_LIBRARIES := liblog

LOCAL_MODULE := lights.hawaii
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif
endif
