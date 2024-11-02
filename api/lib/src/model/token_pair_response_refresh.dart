//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_pair_response_refresh.g.dart';

/// The token that has a longer lifetime and can be used to request a new access token
///
/// Properties:
/// * [expiresAt]
/// * [token]
@BuiltValue()
abstract class TokenPairResponseRefresh
    implements
        Built<TokenPairResponseRefresh, TokenPairResponseRefreshBuilder> {
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'token')
  String? get token;

  TokenPairResponseRefresh._();

  factory TokenPairResponseRefresh(
          [void updates(TokenPairResponseRefreshBuilder b)]) =
      _$TokenPairResponseRefresh;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenPairResponseRefreshBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenPairResponseRefresh> get serializer =>
      _$TokenPairResponseRefreshSerializer();
}

class _$TokenPairResponseRefreshSerializer
    implements PrimitiveSerializer<TokenPairResponseRefresh> {
  @override
  final Iterable<Type> types = const [
    TokenPairResponseRefresh,
    _$TokenPairResponseRefresh
  ];

  @override
  final String wireName = r'TokenPairResponseRefresh';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenPairResponseRefresh object, {
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
    TokenPairResponseRefresh object, {
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
    required TokenPairResponseRefreshBuilder result,
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
  TokenPairResponseRefresh deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenPairResponseRefreshBuilder();
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
