import 'package:dio/dio.dart';

/// Provides a portable way to convert [Error]s and [Exception]s into presentable messages.
class ErrorMessage {
  /// Represents an 'empty' error message.
  static const ErrorMessage empty = ErrorMessage(null);

  /// The [Exception] for which this exception message exists.
  final Exception? exception;

  const ErrorMessage(this.exception);

  factory ErrorMessage.fromThrown(Object error) {
    if (error is Exception) {
      return ErrorMessage(error);
    }

    return empty;
  }

  String? get message {
    if (exception == null) return null;

    if (exception is DioException) {
      switch ((exception as DioException).type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.connectionError:
        case DioExceptionType.cancel:
          return 'A network related error occured';
        case DioExceptionType.badResponse:
          break;
        case DioExceptionType.unknown:
          break;
      }

      // 422 will be handled by ValidationMap, 401 by AuthBloc
      if ((exception as DioException).response?.statusCode == 422) {
        return null;
      } else if ((exception as DioException).response?.statusCode == 401) {
        return 'invalid username or password';
      }

      return (exception as DioException).message;
    }

    return exception.toString();
  }
}
