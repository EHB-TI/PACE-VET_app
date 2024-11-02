import 'package:test/test.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

// tests for MinimalUser
void main() {
  final instance = MinimalUserBuilder();
  // TODO add properties to the builder and call build()

  group(MinimalUser, () {
    // Email address to which communication will be sent, also used for signing in
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // The family name(s) of the user
    // String familyName
    test('to test the property `familyName`', () async {
      // TODO
    });

    // The unique identifier of this user
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Primary name of the user
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The type (or types) of user to create
    // BuiltList<UserType> types
    test('to test the property `types`', () async {
      // TODO
    });
  });
}
