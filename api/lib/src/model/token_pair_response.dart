//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pace_vet_api/src/model/token_pair_response_refresh.dart';
import 'package:pace_vet_api/src/model/token_pair_response_access.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_pair_response.g.dart';

/// Describes a response that contains both an access and a refresh token
///
/// Properties:
/// * [access]
/// * [refresh]
@BuiltValue()
abstract class TokenPairResponse
    implements Built<TokenPairResponse, TokenPairResponseBuilder> {
  @BuiltValueField(wireName: r'access')
  TokenPairResponseAccess? get access;

  @BuiltValueField(wireName: r'refresh')
  TokenPairResponseRefresh? get refresh;

  TokenPairResponse._();

  factory TokenPairResponse([void updates(TokenPairResponseBuilder b)]) =
      _$TokenPairResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenPairResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenPairResponse> get serializer =>
      _$TokenPairResponseSerializer();
}

class _$TokenPairResponseSerializer
    implements PrimitiveSerializer<TokenPairResponse> {
  @override
  final Iterable<Type> types = const [TokenPairResponse, _$TokenPairResponse];

  @override
  final String wireName = r'TokenPairResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenPairResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType(TokenPairResponseAccess),
      );
    }
    if (object.refresh != null) {
      yield r'refresh';
      yield serializers.serialize(
        object.refresh,
        specifiedType: const FullType(TokenPairResponseRefresh),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenPairResponse object, {
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
    required TokenPairResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenPairResponseAccess),
          ) as TokenPairResponseAccess;
          result.access.replace(valueDes);
          break;
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenPairResponseRefresh),
          ) as TokenPairResponseRefresh;
          result.refresh.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenPairResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenPairResponseBuilder();
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
