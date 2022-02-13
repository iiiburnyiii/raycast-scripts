#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title codium
# @raycast.mode compact

# Optional parameters:
# @raycast.icon images/VSCodium.png
# @raycast.argument1 { "type": "text", "placeholder": "Location" }
# @raycast.packageName Console Utils

# Documentation:
# @raycast.description Open VSCodium in loacation

codium "$HOME/$1"

