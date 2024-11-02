//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pace_vet_api/src/model/date.dart';
import 'package:pace_vet_api/src/model/user_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_request.g.dart';

/// Describes a request to create a new user
///
/// Properties:
/// * [address] - Address where the user is living
/// * [dateOfBirth] - When the user was born, used for calculating age etc
/// * [familyName] - The family name(s) of the user
/// * [name] - Primary name of the user
/// * [publicProfile] - Whether this profile can be shown to other users by default
/// * [totp] - A base32 encoded string representing 20 bytes of data, used for 2FA
/// * [types] - The type (or types) of user to create
/// * [verification] - A TOTP token generated from the totp data passed
/// * [email] - Email address to which communication will be sent, also used for signing in
/// * [password] - The password with which the user will sign in
@BuiltValue()
abstract class RegisterRequest
    implements Built<RegisterRequest, RegisterRequestBuilder> {
  /// Address where the user is living
  @BuiltValueField(wireName: r'address')
  String get address;

  /// When the user was born, used for calculating age etc
  @BuiltValueField(wireName: r'date_of_birth')
  Date get dateOfBirth;

  /// The family name(s) of the user
  @BuiltValueField(wireName: r'family_name')
  String get familyName;

  /// Primary name of the user
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Whether this profile can be shown to other users by default
  @BuiltValueField(wireName: r'public_profile')
  bool get publicProfile;

  /// A base32 encoded string representing 20 bytes of data, used for 2FA
  @BuiltValueField(wireName: r'totp')
  String get totp;

  /// The type (or types) of user to create
  @BuiltValueField(wireName: r'types')
  BuiltList<UserType> get types;

  /// A TOTP token generated from the totp data passed
  @BuiltValueField(wireName: r'verification')
  String get verification;

  /// Email address to which communication will be sent, also used for signing in
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// The password with which the user will sign in
  @BuiltValueField(wireName: r'password')
  String? get password;

  RegisterRequest._();

  factory RegisterRequest([void updates(RegisterRequestBuilder b)]) =
      _$RegisterRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegisterRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegisterRequest> get serializer =>
      _$RegisterRequestSerializer();
}

class _$RegisterRequestSerializer
    implements PrimitiveSerializer<RegisterRequest> {
  @override
  final Iterable<Type> types = const [RegisterRequest, _$RegisterRequest];

  @override
  final String wireName = r'RegisterRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegisterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'date_of_birth';
    yield serializers.serialize(
      object.dateOfBirth,
      specifiedType: const FullType(Date),
    );
    yield r'family_name';
    yield serializers.serialize(
      object.familyName,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'public_profile';
    yield serializers.serialize(
      object.publicProfile,
      specifiedType: const FullType(bool),
    );
    yield r'totp';
    yield serializers.serialize(
      object.totp,
      specifiedType: const FullType(String),
    );
    yield r'types';
    yield serializers.serialize(
      object.types,
      specifiedType: const FullType(BuiltList, [FullType(UserType)]),
    );
    yield r'verification';
    yield serializers.serialize(
      object.verification,
      specifiedType: const FullType(String),
    );
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegisterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegisterRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'date_of_birth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.dateOfBirth = valueDes;
          break;
        case r'family_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.familyName = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'public_profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.publicProfile = valueDes;
          break;
        case r'totp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totp = valueDes;
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserType)]),
          ) as BuiltList<UserType>;
          result.types.replace(valueDes);
          break;
        case r'verification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verification = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegisterRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
