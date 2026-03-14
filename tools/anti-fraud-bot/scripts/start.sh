#!/usr/bin/env bash
set -euo pipefail

echo "Starting anti-fraud-bot (scaffold)..."
java -version

JAR_PATH="target/anti-fraud-bot-0.1.0-SNAPSHOT.jar"
if [[ -f "${JAR_PATH}" ]]; then
  java -cp "${JAR_PATH}" App
else
  echo "Build the project first: mvn -q -DskipTests package"
fi
