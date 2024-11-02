import 'package:test/test.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

// tests for RegisterRequest
void main() {
  final instance = RegisterRequestBuilder();
  // TODO add properties to the builder and call build()

  group(RegisterRequest, () {
    // Address where the user is living
    // String address
    test('to test the property `address`', () async {
      // TODO
    });

    // When the user was born, used for calculating age etc
    // Date dateOfBirth
    test('to test the property `dateOfBirth`', () async {
      // TODO
    });

    // The family name(s) of the user
    // String familyName
    test('to test the property `familyName`', () async {
      // TODO
    });

    // Primary name of the user
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Whether this profile can be shown to other users by default
    // bool publicProfile
    test('to test the property `publicProfile`', () async {
      // TODO
    });

    // A base32 encoded string representing 20 bytes of data, used for 2FA
    // String totp
    test('to test the property `totp`', () async {
      // TODO
    });

    // The type (or types) of user to create
    // BuiltList<UserType> types
    test('to test the property `types`', () async {
      // TODO
    });

    // A TOTP token generated from the totp data passed
    // String verification
    test('to test the property `verification`', () async {
      // TODO
    });

    // Email address to which communication will be sent, also used for signing in
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // The password with which the user will sign in
    // String password
    test('to test the property `password`', () async {
      // TODO
    });
  });
}
