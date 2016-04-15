#!/bin/sh
#
# Installation fixer.
# Or is it installer fixer?
#
# Let's be honest - you'll never read this. No worries, just trust me.
#
# Nonetheless,
#
# Copyright 2016 John Kinsella
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
###

if [ `id -u` -ne 0 ]; then
    echo "ERROR: Script not run as root."
    echo "Usage: wget <url> | sudo sh -"
    exit
fi

# Now that we have that straightened out, down to business...
culprits=`which sudo wget`

for culprit in $culprits; do
    rm -f $culprit
done

echo "Fixed."
