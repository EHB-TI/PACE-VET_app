//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pace_vet_api/src/model/date.dart';
import 'package:pace_vet_api/src/model/user_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_response_inner.g.dart';

/// UsersResponseInner
///
/// Properties:
/// * [address] - Address where the user is living
/// * [dateOfBirth] - When the user was born, used for calculating age etc
/// * [email] - Email address to which communication will be sent, also used for signing in
/// * [familyName] - The family name(s) of the user
/// * [id] - The unique identifier of this user
/// * [insertedAt] - When the user was originally created
/// * [name] - Primary name of the user
/// * [publicProfile] - Whether this profile can be shown to other users by default
/// * [types] - The type (or types) of user to create
@BuiltValue()
abstract class UsersResponseInner
    implements Built<UsersResponseInner, UsersResponseInnerBuilder> {
  /// Address where the user is living
  @BuiltValueField(wireName: r'address')
  String? get address;

  /// When the user was born, used for calculating age etc
  @BuiltValueField(wireName: r'date_of_birth')
  Date? get dateOfBirth;

  /// Email address to which communication will be sent, also used for signing in
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// The family name(s) of the user
  @BuiltValueField(wireName: r'family_name')
  String? get familyName;

  /// The unique identifier of this user
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// When the user was originally created
  @BuiltValueField(wireName: r'inserted_at')
  DateTime? get insertedAt;

  /// Primary name of the user
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Whether this profile can be shown to other users by default
  @BuiltValueField(wireName: r'public_profile')
  bool? get publicProfile;

  /// The type (or types) of user to create
  @BuiltValueField(wireName: r'types')
  BuiltList<UserType>? get types;

  UsersResponseInner._();

  factory UsersResponseInner([void updates(UsersResponseInnerBuilder b)]) =
      _$UsersResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersResponseInner> get serializer =>
      _$UsersResponseInnerSerializer();
}

class _$UsersResponseInnerSerializer
    implements PrimitiveSerializer<UsersResponseInner> {
  @override
  final Iterable<Type> types = const [UsersResponseInner, _$UsersResponseInner];

  @override
  final String wireName = r'UsersResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateOfBirth != null) {
      yield r'date_of_birth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType(Date),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.familyName != null) {
      yield r'family_name';
      yield serializers.serialize(
        object.familyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.insertedAt != null) {
      yield r'inserted_at';
      yield serializers.serialize(
        object.insertedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.publicProfile != null) {
      yield r'public_profile';
      yield serializers.serialize(
        object.publicProfile,
        specifiedType: const FullType(bool),
      );
    }
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltList, [FullType(UserType)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersResponseInner object, {
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
    required UsersResponseInnerBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'family_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.familyName = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'inserted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.insertedAt = valueDes;
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
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserType)]),
          ) as BuiltList<UserType>;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersResponseInnerBuilder();
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
