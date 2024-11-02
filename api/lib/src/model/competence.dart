//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'competence.g.dart';

/// Describes PACE-VET competence
///
/// Properties:
/// * [conceptUri] - The link to the ESCO skill page
/// * [description] - A human-readable description of this competence
/// * [esco] - The ESCO version of this competence
/// * [key] - The unique key to identify this competence
/// * [scope] - The scope as defined by ESCO
/// * [sectorDetails] - Free-form sector details
/// * [title] - The human-readable title of this competence
@BuiltValue()
abstract class Competence implements Built<Competence, CompetenceBuilder> {
  /// The link to the ESCO skill page
  @BuiltValueField(wireName: r'concept_uri')
  String? get conceptUri;

  /// A human-readable description of this competence
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The ESCO version of this competence
  @BuiltValueField(wireName: r'esco')
  String? get esco;

  /// The unique key to identify this competence
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// The scope as defined by ESCO
  @BuiltValueField(wireName: r'scope')
  String? get scope;

  /// Free-form sector details
  @BuiltValueField(wireName: r'sector_details')
  JsonObject? get sectorDetails;

  /// The human-readable title of this competence
  @BuiltValueField(wireName: r'title')
  String? get title;

  Competence._();

  factory Competence([void updates(CompetenceBuilder b)]) = _$Competence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompetenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Competence> get serializer => _$CompetenceSerializer();
}

class _$CompetenceSerializer implements PrimitiveSerializer<Competence> {
  @override
  final Iterable<Type> types = const [Competence, _$Competence];

  @override
  final String wireName = r'Competence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Competence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conceptUri != null) {
      yield r'concept_uri';
      yield serializers.serialize(
        object.conceptUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.esco != null) {
      yield r'esco';
      yield serializers.serialize(
        object.esco,
        specifiedType: const FullType(String),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(String),
      );
    }
    if (object.sectorDetails != null) {
      yield r'sector_details';
      yield serializers.serialize(
        object.sectorDetails,
        specifiedType: const FullType(JsonObject),
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
    Competence object, {
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
    required CompetenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'concept_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.conceptUri = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'esco':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.esco = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scope = valueDes;
          break;
        case r'sector_details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.sectorDetails = valueDes;
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
  Competence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompetenceBuilder();
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
