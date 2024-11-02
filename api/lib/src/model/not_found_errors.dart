//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'not_found_errors.g.dart';

/// NotFoundErrors
///
/// Properties:
/// * [default_] - Description of the error
@BuiltValue()
abstract class NotFoundErrors
    implements Built<NotFoundErrors, NotFoundErrorsBuilder> {
  /// Description of the error
  @BuiltValueField(wireName: r'default')
  String? get default_;

  NotFoundErrors._();

  factory NotFoundErrors([void updates(NotFoundErrorsBuilder b)]) =
      _$NotFoundErrors;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotFoundErrorsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotFoundErrors> get serializer =>
      _$NotFoundErrorsSerializer();
}

class _$NotFoundErrorsSerializer
    implements PrimitiveSerializer<NotFoundErrors> {
  @override
  final Iterable<Type> types = const [NotFoundErrors, _$NotFoundErrors];

  @override
  final String wireName = r'NotFoundErrors';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotFoundErrors object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotFoundErrors object, {
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
    required NotFoundErrorsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.default_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotFoundErrors deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotFoundErrorsBuilder();
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
