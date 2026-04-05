#!/bin/bash
echo "🌸 WordBloom APK Builder"
echo "========================"

echo ""
echo "📦 Step 1: Installing dependencies..."
npm install

echo ""
echo "📱 Step 2: Adding Android platform..."
npx cap add android

echo ""
echo "📋 Step 3: Copying game files..."
cp wordbloom_v3_final.html www/
npx cap sync android

echo ""
echo "🔧 Step 4: Building APK..."
cd android
chmod +x gradlew
./gradlew assembleDebug

echo ""
echo "✅ DONE! APK is at:"
echo "android/app/build/outputs/apk/debug/app-debug.apk"
