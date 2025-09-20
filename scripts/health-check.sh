#!/bin/bash

# Build Health Check Script
echo "🔍 Performing build health check..."

# Check if dist folder exists
if [ ! -d "dist" ]; then
    echo "❌ Error: dist folder not found"
    exit 1
fi

# Check if index.html exists
if [ ! -f "dist/index.html" ]; then
    echo "❌ Error: index.html not found in dist"
    exit 1
fi

# Check if index.html is not empty
if [ ! -s "dist/index.html" ]; then
    echo "❌ Error: index.html is empty"
    exit 1
fi

# Check for common build artifacts
has_js_files=$(find dist -name "*.js" | wc -l)
has_css_files=$(find dist -name "*.css" | wc -l)

echo "📊 Build Statistics:"
echo "   JavaScript files: $has_js_files"
echo "   CSS files: $has_css_files"
echo "   Total files: $(find dist -type f | wc -l)"
echo "   Total size: $(du -sh dist | cut -f1)"

# Basic content validation
if grep -q "<!DOCTYPE html>" dist/index.html; then
    echo "✅ Valid HTML structure found"
else
    echo "⚠️  Warning: HTML structure may be invalid"
fi

echo "✅ Build health check passed!"
exit 0
