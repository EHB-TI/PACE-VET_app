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