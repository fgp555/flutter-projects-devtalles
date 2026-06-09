# index
- 04 Flutter - Primeros pasos
- 05 Yes No - Maybe App ui/ux
- 06 context / gestor de estado

snippets

```sh
stles

mateapp
```

https://i.pravatar.cc/300

```sh
rm -fr * && rm -fr .*
flutter create . --org com.frankgp --project-name dev --empty --platforms android

flutter devices
flutter run

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
```

# pub.dev

```sh
# https://pub.dev/packages/provider
flutter pub add provider

flutter pub add http
flutter pub add dio

```

create type from json
https://app.quicktype.io/ 