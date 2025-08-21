#!/bin/bash

set -e

# Install Flutter (stable channel)
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

# Check Flutter version
flutter --version

# Get project dependencies
flutter pub get
