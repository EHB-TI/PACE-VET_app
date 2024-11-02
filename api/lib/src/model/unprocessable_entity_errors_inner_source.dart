//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unprocessable_entity_errors_inner_source.g.dart';

/// UnprocessableEntityErrorsInnerSource
///
/// Properties:
/// * [pointer] - The location of the offending property
@BuiltValue()
abstract class UnprocessableEntityErrorsInnerSource
    implements
        Built<UnprocessableEntityErrorsInnerSource,
            UnprocessableEntityErrorsInnerSourceBuilder> {
  /// The location of the offending property
  @BuiltValueField(wireName: r'pointer')
  String? get pointer;

  UnprocessableEntityErrorsInnerSource._();

  factory UnprocessableEntityErrorsInnerSource(
          [void updates(UnprocessableEntityErrorsInnerSourceBuilder b)]) =
      _$UnprocessableEntityErrorsInnerSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnprocessableEntityErrorsInnerSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnprocessableEntityErrorsInnerSource> get serializer =>
      _$UnprocessableEntityErrorsInnerSourceSerializer();
}

class _$UnprocessableEntityErrorsInnerSourceSerializer
    implements PrimitiveSerializer<UnprocessableEntityErrorsInnerSource> {
  @override
  final Iterable<Type> types = const [
    UnprocessableEntityErrorsInnerSource,
    _$UnprocessableEntityErrorsInnerSource
  ];

  @override
  final String wireName = r'UnprocessableEntityErrorsInnerSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnprocessableEntityErrorsInnerSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pointer != null) {
      yield r'pointer';
      yield serializers.serialize(
        object.pointer,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UnprocessableEntityErrorsInnerSource object, {
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
    required UnprocessableEntityErrorsInnerSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pointer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pointer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnprocessableEntityErrorsInnerSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnprocessableEntityErrorsInnerSourceBuilder();
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
