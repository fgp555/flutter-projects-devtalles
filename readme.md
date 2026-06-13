# pub.dev

```sh
# https://pub.dev/packages/provider
# https://pub.dev/packages/video_player

flutter pub add provider
flutter pub add http
flutter pub add dio
flutter pub add intl # format number
flutter pub add animate_do # de fernando herrera
flutter pub add video_player@2.9.2
flutter pub add go_router

```

snippets

```sh
stles

mateapp
```

https://i.pravatar.cc/300

```sh
rm -fr * && rm -fr .*
flutter create . --org com.frankgp --project-name dev --empty --platforms android

flutter run
flutter run --release
flutter devices

code android/app/src/main/AndroidManifest.xml
<uses-permission android:name="android.permission.INTERNET"/>

flutter build apk
adb install build/app/outputs/flutter-apk/app-release.apk

flutter build appbundle
explorer build\\app\\outputs\\bundle\\release
keytool -printcert -jarfile build/app/outputs/bundle/release/app-release.aab
SHA1: D0:77:6E:E7:42:DB:BB:6F:1A:2F:3C:25:90:69:E1:9D:DB:C1:AF:A4

adb uninstall com.frankgp.dev
adb shell am start -a android.intent.action.VIEW "market://details?id=com.frankgp.dev"
adb shell monkey -p com.frankgp.dev -c android.intent.category.LAUNCHER 1

adb uninstall com.frankgp.widgets
adb shell am start -a android.intent.action.VIEW "market://details?id=com.frankgp.widgets"
adb shell monkey -p com.frankgp.widgets -c android.intent.category.LAUNCHER 1

adb connect 192.168.18.23:5555    # Connect to the Android device wirelessly
adb disconnect 192.168.18.23:5555
adb devices

adb shell settings get global stay_on_while_plugged_in
adb shell settings put global stay_on_while_plugged_in 3
# 0 = desactivado
# 1 = solo cargador AC
# 2 = solo USB
# 3 = AC + USB
# 4 = carga inalámbrica
# 7 = AC + USB + inalámbrica

flutter clean
flutter pub get
flutter run

# 07\android\gradle.properties
kotlin.incremental=false
kotlin.incremental.useClasspathSnapshot=false
# OR
PUB_CACHE=E:\builds\pub-cache
echo $PUB_CACHE
flutter pub cache repair

```

create type from json
https://app.quicktype.io/

# notes

- curso intermedio de Flutter para crear widget en pub
