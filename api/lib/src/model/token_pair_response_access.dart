//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_pair_response_access.g.dart';

/// The token that provides access to API resources
///
/// Properties:
/// * [expiresAt]
/// * [token]
@BuiltValue()
abstract class TokenPairResponseAccess
    implements Built<TokenPairResponseAccess, TokenPairResponseAccessBuilder> {
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'token')
  String? get token;

  TokenPairResponseAccess._();

  factory TokenPairResponseAccess(
          [void updates(TokenPairResponseAccessBuilder b)]) =
      _$TokenPairResponseAccess;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenPairResponseAccessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenPairResponseAccess> get serializer =>
      _$TokenPairResponseAccessSerializer();
}

class _$TokenPairResponseAccessSerializer
    implements PrimitiveSerializer<TokenPairResponseAccess> {
  @override
  final Iterable<Type> types = const [
    TokenPairResponseAccess,
    _$TokenPairResponseAccess
  ];

  @override
  final String wireName = r'TokenPairResponseAccess';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenPairResponseAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenPairResponseAccess object, {
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
    required TokenPairResponseAccessBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenPairResponseAccess deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenPairResponseAccessBuilder();
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
