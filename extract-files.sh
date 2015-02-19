#!/bin/bash

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=shinano
MANUFACTURER=sony

. ../shinano-common/extract-files.sh

SHINANO_ETC="
	simple_thermal_monitor.cfg
	"

copy_files "$SHINANO_ETC" "system/etc" "etc"

SHINANO_FIRMWARE_CLEARPAD="
       touch_module_id_0x74.img
       touch_module_id_0x75.img
       touch_module_id_0x76.img
       touch_module_id_0x78.img
       touch_module_id_0x7a.img
       touch_module_id_0x7b.img
       touch_module_id_0x7c.img
       touch_module_id_0x7d.img
       touch_module_id_0x7e.img
       touch_module_id_0x7f.img
       touch_module_id_0x80.img
       touch_module_id_0x81.img
       touch_module_id_0x95.img
       touch_module_id_0x96.img
       "

copy_files "$SHINANO_FIRMWARE_CLEARPAD" "system/etc/firmware" "etc/firmware"
