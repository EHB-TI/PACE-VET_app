# pace_vet

A new Flutter project.

## Getting Started
Create a file named `.env` in the root of the project (or copy the `.env.example` to `.env`)
```json
{
    "API_URL": "URL-TO-API-ENDPOINT"
}
```

Install dependencies
```shell
flutter pub get
```

Generate translation files
```shell
flutter gen-l10n
```

Generate source code (routing, ORM, ...)
```shell
flutter pub run build_runner build
```

of, if you'd like a nice snippet you can copy-paste:
```shell
flutter pub get
flutter pub run build_runner build
```

If you use Visual Studio Code you can use the task "first time setup" to run all the above after `flutter pub get`.

## Generating a release
For Android:
```shell
flutter build apk --dart-define=APP_ENV=production
```
For Android:
```shell
 flutter build appbundle --release --dart-define=API_URL=https://pace-vet.fly.dev/  
```
For iOS:
```shell
 flutter build ios --release --dart-define=API_URL=https://pace-vet.fly.dev/     
```


### Setting Up Internet Permission for Release Builds

In order for the app to access the internet, especially in **release builds**, ensure that the `INTERNET` permission is added to your `AndroidManifest.xml` file.

1. Open the following file in your Flutter project:
   ```
   android/app/src/main/AndroidManifest.xml
   ```

2. Add the following line inside the `<manifest>` tag, before the `<application>` tag:

   ```xml
   <manifest xmlns:android="http://schemas.android.com/apk/res/android"
       package="your.package.name">
       
       <!-- Add this permission if it’s not already present -->
       <uses-permission android:name="android.permission.INTERNET"/>
   
       <!-- Other configurations -->
   </manifest>
   ```

The `<uses-permission android:name="android.permission.INTERNET"/>` line is necessary for network access in release builds. While internet permission is often automatically granted in debug builds, it must be explicitly declared for the app to access the internet in release mode.
```
