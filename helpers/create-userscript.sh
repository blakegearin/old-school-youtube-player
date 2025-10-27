#!/bin/bash

CSS_FILE="src/old-school-youtube-player.user.css"
TEMPLATE_FILE="src/template/old-school-youtube-player.user.js"
JS_FILE="src/old-school-youtube-player.user.js"

if [ ! -f "$CSS_FILE" ]; then
  echo "CSS file $CSS_FILE not found!"
  exit 1
fi

if [ ! -f "$TEMPLATE_FILE" ]; then
  echo "Template file $TEMPLATE_FILE not found!"
  exit 1
fi

# Extract version from CSS file
VERSION=$(grep -o '@version[[:space:]]*[0-9]*\.[0-9]*\.[0-9]*' "$CSS_FILE" | sed 's/@version[[:space:]]*//')

if [ -z "$VERSION" ]; then
  echo "No version found in $CSS_FILE"
  exit 1
fi

# Extract CSS content (skip @-moz-document line and closing brace)
CSS_CONTENT=$(sed -n '/^@-moz-document/,$ {
  /^@-moz-document/d
  /^{$/d
  /^}$/d
  p
}' "$CSS_FILE")

if [ -z "$CSS_CONTENT" ]; then
  echo "No CSS content found in $CSS_FILE"
  exit 1
fi

# Create a temporary file with the CSS content
TEMP_FILE=$(mktemp)
echo "$CSS_CONTENT" > "$TEMP_FILE"

# Use awk to replace {VERSION} and {USERSTYLE} placeholders
awk -v css_file="$TEMP_FILE" -v version="$VERSION" '
  /{VERSION}/ {
    sub(/{VERSION}/, version)
    print
    next
  }
  /{USERSTYLE}/ {
    while ((getline line < css_file) > 0) {
      print line
    }
    close(css_file)
    next
  }
  { print }
' "$TEMPLATE_FILE" > "$JS_FILE"

# Clean up
rm "$TEMP_FILE"

echo "CSS injected successfully from $TEMPLATE_FILE into $JS_FILE with version $VERSION"
