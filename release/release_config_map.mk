#
# Copyright (C) 2024 TheParasiteProject
# Copyright (C) 2024 The LineageOS Project
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

TARGET_RELEASE := ap2a

# Get the directory for this file, and use that instead of a fixed path.
local_dir := $(dir $(lastword $(MAKEFILE_LIST)))

# Attach the flag value definitions to the various release configurations.
$(call declare-release-config, ap2a, $(local_dir)build_config/ap2a.scl)

local_dir :=
