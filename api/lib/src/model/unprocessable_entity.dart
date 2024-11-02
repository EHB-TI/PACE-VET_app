//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pace_vet_api/src/model/unprocessable_entity_errors_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unprocessable_entity.g.dart';

/// Describes a request whose information did not meet requirements
///
/// Properties:
/// * [errors]
@BuiltValue()
abstract class UnprocessableEntity
    implements Built<UnprocessableEntity, UnprocessableEntityBuilder> {
  @BuiltValueField(wireName: r'errors')
  BuiltList<UnprocessableEntityErrorsInner>? get errors;

  UnprocessableEntity._();

  factory UnprocessableEntity([void updates(UnprocessableEntityBuilder b)]) =
      _$UnprocessableEntity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnprocessableEntityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnprocessableEntity> get serializer =>
      _$UnprocessableEntitySerializer();
}

class _$UnprocessableEntitySerializer
    implements PrimitiveSerializer<UnprocessableEntity> {
  @override
  final Iterable<Type> types = const [
    UnprocessableEntity,
    _$UnprocessableEntity
  ];

  @override
  final String wireName = r'UnprocessableEntity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnprocessableEntity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(
            BuiltList, [FullType(UnprocessableEntityErrorsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UnprocessableEntity object, {
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
    required UnprocessableEntityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(UnprocessableEntityErrorsInner)]),
          ) as BuiltList<UnprocessableEntityErrorsInner>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnprocessableEntity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnprocessableEntityBuilder();
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
