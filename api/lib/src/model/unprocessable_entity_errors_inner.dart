//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pace_vet_api/src/model/unprocessable_entity_errors_inner_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unprocessable_entity_errors_inner.g.dart';

/// UnprocessableEntityErrorsInner
///
/// Properties:
/// * [detail] - Error message describing the error
/// * [source_]
/// * [title] - General error title
@BuiltValue()
abstract class UnprocessableEntityErrorsInner
    implements
        Built<UnprocessableEntityErrorsInner,
            UnprocessableEntityErrorsInnerBuilder> {
  /// Error message describing the error
  @BuiltValueField(wireName: r'detail')
  String? get detail;

  @BuiltValueField(wireName: r'source')
  UnprocessableEntityErrorsInnerSource? get source_;

  /// General error title
  @BuiltValueField(wireName: r'title')
  String? get title;

  UnprocessableEntityErrorsInner._();

  factory UnprocessableEntityErrorsInner(
          [void updates(UnprocessableEntityErrorsInnerBuilder b)]) =
      _$UnprocessableEntityErrorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnprocessableEntityErrorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnprocessableEntityErrorsInner> get serializer =>
      _$UnprocessableEntityErrorsInnerSerializer();
}

class _$UnprocessableEntityErrorsInnerSerializer
    implements PrimitiveSerializer<UnprocessableEntityErrorsInner> {
  @override
  final Iterable<Type> types = const [
    UnprocessableEntityErrorsInner,
    _$UnprocessableEntityErrorsInner
  ];

  @override
  final String wireName = r'UnprocessableEntityErrorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnprocessableEntityErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(UnprocessableEntityErrorsInnerSource),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UnprocessableEntityErrorsInner object, {
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
    required UnprocessableEntityErrorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detail = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnprocessableEntityErrorsInnerSource),
          ) as UnprocessableEntityErrorsInnerSource;
          result.source_.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnprocessableEntityErrorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnprocessableEntityErrorsInnerBuilder();
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
