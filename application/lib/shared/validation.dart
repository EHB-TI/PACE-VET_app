/// Contains helper methods for validation of input fields in forms
library;

/// Defines a validator function for an input field.
typedef ValidatorFunction<T> = String? Function(T value);

/// Builds a validator function that runs (in order) the given set of validators.
String? Function(T) buildValidator<T>(List<ValidatorFunction<T>> validators) {
  return (value) {
    for (var validator in validators) {
      final result = validator(value);

      if (result != null) {
        return result;
      }
    }

    return null;
  };
}

/// Validates that the annotated field has been assigned a value.
String? isRequired<T>(T? value) {
  if (value is String) {
    if (value.isNotEmpty) return null;
  } else if (value != null) {
    return null;
  }

  return 'This field is required';
}

/// Validates that the annotated field has a value no longer than the max.
ValidatorFunction<String?> maxLength<T>(int maxLength) {
  return (String? value) {
    if (value is String && value.length <= maxLength) {
      return null;
    }

    return 'Cannot be longer than $maxLength';
  };
}

/// Validates that the input field contains a valid email address.
String? validEmail(String? email) {
  if (email != null && email.contains('@')) return null;

  return 'Must be a valid email address';
}

String? validPassword(String? password) {
  if (password != null && password.length >= 12 && password.length <= 72) {
    return null;
  }

  return 'Must be between 12 and 72 characters';
}

ValidatorFunction<String?> validPasswordConfirmation(String? Function() value) {
  return (String? confirmation) {
    if (confirmation == value()) {
      return null;
    }

    return 'Password confirmation must match';
  };
}

final _phonePattern =
    RegExp(r'^((\+[0-9]{2,3}\s?)|0)?([0-9]{3})(\s?[0-9]{2}){3}$');

/// Validates that the input field contains a valid phone number.
String? validPhoneNumber(String? phoneNumber) {
  if (_phonePattern.hasMatch(phoneNumber ?? '')) return null;

  return 'Must be a valid phone number';
}

String? validUrl(String? url) {
  if (Uri.tryParse(url ?? '')?.hasAbsolutePath ?? false) {
    return null;
  }

  return 'Must be a valid URL';
}

ValidatorFunction<DateTime?> minimumAge<T>(int minimum) {
  return (DateTime? value) {
    final duration = DateTime.now().difference(value ?? DateTime.now());
    if ((duration.inDays / 365) >= minimum) return null;

    return 'must be at least $minimum years old';
  };
}
