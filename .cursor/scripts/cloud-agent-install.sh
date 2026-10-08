#!/usr/bin/env bash
set -euo pipefail

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export ANDROID_HOME=/opt/android-sdk
export PATH="$JAVA_HOME/bin:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"

cd /workspace

git submodule update --init --recursive

echo "sdk.dir=${ANDROID_HOME}" > local.properties

chmod +x gradlew

# Prefetch Gradle dependencies and large runtime assets (imagefs, proton).
./gradlew downloadProton --no-daemon
