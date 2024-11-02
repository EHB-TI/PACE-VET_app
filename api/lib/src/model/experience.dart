//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pace_vet_api/src/model/attachment.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'experience.g.dart';

/// Represents an experience of a candidate, potentially with attachments
///
/// Properties:
/// * [attachments] - A list of all attachments associated with experiences
/// * [description] - A long-form description of the experience
/// * [end] - When the event/... that gained the experience ended
/// * [id] - The unique identifier of this experience
/// * [location] - The location where the experience was gained
/// * [start] - When the event/... that gained the experience started
/// * [title] - The title of the experience
/// * [type] - The type of experience
@BuiltValue()
abstract class Experience implements Built<Experience, ExperienceBuilder> {
  /// A list of all attachments associated with experiences
  @BuiltValueField(wireName: r'attachments')
  BuiltList<Attachment>? get attachments;

  /// A long-form description of the experience
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// When the event/... that gained the experience ended
  @BuiltValueField(wireName: r'end')
  DateTime? get end;

  /// The unique identifier of this experience
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// The location where the experience was gained
  @BuiltValueField(wireName: r'location')
  String? get location;

  /// When the event/... that gained the experience started
  @BuiltValueField(wireName: r'start')
  DateTime? get start;

  /// The title of the experience
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The type of experience
  @BuiltValueField(wireName: r'type')
  ExperienceTypeEnum? get type;
  // enum typeEnum {  event,  training,  work,  };

  Experience._();

  factory Experience([void updates(ExperienceBuilder b)]) = _$Experience;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExperienceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Experience> get serializer => _$ExperienceSerializer();
}

class _$ExperienceSerializer implements PrimitiveSerializer<Experience> {
  @override
  final Iterable<Type> types = const [Experience, _$Experience];

  @override
  final String wireName = r'Experience';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Experience object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ExperienceTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Experience object, {
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
    required ExperienceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Attachment)]),
          ) as BuiltList<Attachment>;
          result.attachments.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.end = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.start = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExperienceTypeEnum),
          ) as ExperienceTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Experience deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExperienceBuilder();
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

class ExperienceTypeEnum extends EnumClass {
  /// The type of experience
  @BuiltValueEnumConst(wireName: r'event')
  static const ExperienceTypeEnum event = _$experienceTypeEnum_event;

  /// The type of experience
  @BuiltValueEnumConst(wireName: r'training')
  static const ExperienceTypeEnum training = _$experienceTypeEnum_training;

  /// The type of experience
  @BuiltValueEnumConst(wireName: r'work', fallback: true)
  static const ExperienceTypeEnum work = _$experienceTypeEnum_work;

  static Serializer<ExperienceTypeEnum> get serializer =>
      _$experienceTypeEnumSerializer;

  const ExperienceTypeEnum._(String name) : super(name);

  static BuiltSet<ExperienceTypeEnum> get values => _$experienceTypeEnumValues;
  static ExperienceTypeEnum valueOf(String name) =>
      _$experienceTypeEnumValueOf(name);
}
