import 'package:pace_vet_api/pace_vet_api.dart';

extension UserExtensions on User {
  /// shorthand for '$name $familyName'.
  String get fullName => '$name $familyName';

  /// Checks if the user has a given [UserType].
  bool hasUserType(UserType type) {
    return types?.any((value) => type == value) ?? false;
  }

  /// Checks if the user has a given [UserType].
  bool hasAnyUserTypes(List<UserType> types) {
    for (var type in types) {
      if (hasUserType(type)) return true;
    }

    return false;
  }
}
