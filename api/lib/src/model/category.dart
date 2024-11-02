//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pace_vet_api/src/model/competence.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category.g.dart';

/// Describes a PACE-VET competence category
///
/// Properties:
/// * [competences] - A list of competences that are associated with this category
/// * [key] - The unique key to identify this category
/// * [title] - The human-readable title of this category
@BuiltValue()
abstract class Category implements Built<Category, CategoryBuilder> {
  /// A list of competences that are associated with this category
  @BuiltValueField(wireName: r'competences')
  BuiltList<Competence>? get competences;

  /// The unique key to identify this category
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// The human-readable title of this category
  @BuiltValueField(wireName: r'title')
  String? get title;

  Category._();

  factory Category([void updates(CategoryBuilder b)]) = _$Category;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Category> get serializer => _$CategorySerializer();
}

class _$CategorySerializer implements PrimitiveSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];

  @override
  final String wireName = r'Category';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Category object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.competences != null) {
      yield r'competences';
      yield serializers.serialize(
        object.competences,
        specifiedType: const FullType(BuiltList, [FullType(Competence)]),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
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
    Category object, {
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
    required CategoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'competences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Competence)]),
          ) as BuiltList<Competence>;
          result.competences.replace(valueDes);
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
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
  Category deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoryBuilder();
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
