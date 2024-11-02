import 'package:dio/dio.dart';

/// Wrapper for [UnprocessableEntity] that allows fetching errors for fields.
class ValidationMap {
  /// A constant empty validation map with no errors.
  static const ValidationMap empty = ValidationMap({});

  final Map<String, String> _errors;

  const ValidationMap(this._errors);

  /// Attempts to build a [ValidationMap] from an [Error].
  factory ValidationMap.fromError(dynamic error) {
    if (error is DioException && error.response != null) {
      return ValidationMap.fromResponse(error.response!);
    }

    return ValidationMap.empty;
  }

  /// Attempt to generate a [ValidationMap] from a [Response].
  factory ValidationMap.fromResponse(Response response) {
    if (response.statusCode != 422) {
      return empty;
    } else {
      final Map<String, String> errors = {};
      for (Map<String, dynamic> error in response.data['errors']) {
        errors[error['source']['pointer']] = error['detail'];
      }

      return ValidationMap(errors);
    }
  }

  /// Attempts to retrieve an error (if any) for a given [key] (field).
  String? operator [](String key) => getError(key);

  /// Attempts to retrieve an error (if any) for a given [key] (field).
  String? getError(String key) {
    if (_errors.containsKey(key)) {
      return _errors[key];
    }

    return null;
  }
}
