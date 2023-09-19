#!/bin/bash

CURR_VERSION=fuels_beta3-v`awk '/^version: /{print $2}' packages/fuels_beta3/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_fuels_beta3/ios/flutter_fuels_beta3.podspec
#sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_fuels_beta3/macos/flutter_fuels_beta3.podspec
#rm packages/flutter_fuels_beta3/macos/*.bak packages/flutter_fuels_beta3/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android #linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_fuels_beta3/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_fuels_beta3/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_fuels_beta3/
