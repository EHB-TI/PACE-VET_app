//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mfa_request.g.dart';

/// Describes a request to complete a MFA challenge
///
/// Properties:
/// * [totp]
@BuiltValue()
abstract class MfaRequest implements Built<MfaRequest, MfaRequestBuilder> {
  @BuiltValueField(wireName: r'totp')
  String get totp;

  MfaRequest._();

  factory MfaRequest([void updates(MfaRequestBuilder b)]) = _$MfaRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MfaRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MfaRequest> get serializer => _$MfaRequestSerializer();
}

class _$MfaRequestSerializer implements PrimitiveSerializer<MfaRequest> {
  @override
  final Iterable<Type> types = const [MfaRequest, _$MfaRequest];

  @override
  final String wireName = r'MfaRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MfaRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'totp';
    yield serializers.serialize(
      object.totp,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MfaRequest object, {
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
    required MfaRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MfaRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MfaRequestBuilder();
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
