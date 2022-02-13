#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title tldr
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Command" }
# @raycast.packageName Console Utils

# Documentation:
# @raycast.description Show command description

tldr "$1"
