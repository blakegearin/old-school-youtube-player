#!/bin/bash

FILE="src/old-school-youtube-player.user.css"

if [ ! -f "$FILE" ]; then
  echo "File $FILE not found!" >&2
  exit 1
fi

# If version is provided and not empty, use it; otherwise generate calendar version
if [ -n "$1" ] && [ "$1" != "" ]; then
  NEW_VERSION=$1
else
  # Get current version from file
  CURRENT_VERSION=$(grep -o '@version[[:space:]]*[0-9]*\.[0-9]*\.[0-9]*' "$FILE" | sed 's/@version[[:space:]]*//')

  if [ -z "$CURRENT_VERSION" ]; then
    echo "Could not find current version in $FILE" >&2
    exit 1
  fi

  # Parse current version
  CURRENT_YEAR=$(echo $CURRENT_VERSION | cut -d. -f1)
  CURRENT_MONTH=$(echo $CURRENT_VERSION | cut -d. -f2)
  CURRENT_PATCH=$(echo $CURRENT_VERSION | cut -d. -f3)

  # Get current date
  NEW_YEAR=$(date +%Y)
  NEW_MONTH=$(date +%-m)  # Remove leading zero

  # Determine new patch version
  if [ "$NEW_YEAR" -eq "$CURRENT_YEAR" ] && [ "$NEW_MONTH" -eq "$CURRENT_MONTH" ]; then
    # Same year and month, increment patch
    NEW_PATCH=$((CURRENT_PATCH + 1))
  else
    # New year or month, reset patch to 0
    NEW_PATCH=0
  fi

  NEW_VERSION="$NEW_YEAR.$NEW_MONTH.$NEW_PATCH"
  echo "Auto-generated version: $NEW_VERSION (from $CURRENT_VERSION)" >&2
fi

# Update @version line with flexible spacing
sed -i '' -E "s|@version[[:space:]]+[0-9]+\.[0-9]+\.[0-9]+|@version      $NEW_VERSION|" "$FILE"
if [ $? -ne 0 ]; then
  echo "Failed to update @version. Aborting." >&2
  exit 1
fi

# Update const VERSION declaration
sed -i '' -E "s|const VERSION = '[0-9]+\.[0-9]+\.[0-9]+';|const VERSION = '$NEW_VERSION';|" "$FILE"
if [ $? -ne 0 ]; then
  echo "Failed to update VERSION. Aborting." >&2
  exit 1
fi

echo "Version updated to $NEW_VERSION in $FILE" >&2

# Output the version number for capture
echo "$NEW_VERSION"
