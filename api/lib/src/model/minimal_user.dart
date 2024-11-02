//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pace_vet_api/src/model/user_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'minimal_user.g.dart';

/// Describes a user returned by the API with minimal information
///
/// Properties:
/// * [email] - Email address to which communication will be sent, also used for signing in
/// * [familyName] - The family name(s) of the user
/// * [id] - The unique identifier of this user
/// * [name] - Primary name of the user
/// * [types] - The type (or types) of user to create
@BuiltValue()
abstract class MinimalUser implements Built<MinimalUser, MinimalUserBuilder> {
  /// Email address to which communication will be sent, also used for signing in
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// The family name(s) of the user
  @BuiltValueField(wireName: r'family_name')
  String? get familyName;

  /// The unique identifier of this user
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Primary name of the user
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The type (or types) of user to create
  @BuiltValueField(wireName: r'types')
  BuiltList<UserType>? get types;

  MinimalUser._();

  factory MinimalUser([void updates(MinimalUserBuilder b)]) = _$MinimalUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MinimalUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MinimalUser> get serializer => _$MinimalUserSerializer();
}

class _$MinimalUserSerializer implements PrimitiveSerializer<MinimalUser> {
  @override
  final Iterable<Type> types = const [MinimalUser, _$MinimalUser];

  @override
  final String wireName = r'MinimalUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MinimalUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
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
    MinimalUser object, {
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
    required MinimalUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
  MinimalUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MinimalUserBuilder();
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
