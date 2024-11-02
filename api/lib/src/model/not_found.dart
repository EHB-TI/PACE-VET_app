//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pace_vet_api/src/model/not_found_errors.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'not_found.g.dart';

/// Describes a request whose information could not be found
///
/// Properties:
/// * [errors]
@BuiltValue()
abstract class NotFound implements Built<NotFound, NotFoundBuilder> {
  @BuiltValueField(wireName: r'errors')
  NotFoundErrors? get errors;

  NotFound._();

  factory NotFound([void updates(NotFoundBuilder b)]) = _$NotFound;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotFoundBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotFound> get serializer => _$NotFoundSerializer();
}

class _$NotFoundSerializer implements PrimitiveSerializer<NotFound> {
  @override
  final Iterable<Type> types = const [NotFound, _$NotFound];

  @override
  final String wireName = r'NotFound';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotFound object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(NotFoundErrors),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotFound object, {
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
    required NotFoundBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotFoundErrors),
          ) as NotFoundErrors;
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
  NotFound deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotFoundBuilder();
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
