//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_experience_request.g.dart';

/// Describes a request to create a new experience
///
/// Properties:
/// * [description] - A long-form description of the experience
/// * [location] - The location where the experience was gained
/// * [start] - When the event/... that gained the experience started
/// * [title] - The title of the experience
/// * [type] - The type of experience to create
/// * [end] - When the event/... that gained the experience ended
@BuiltValue()
abstract class CreateExperienceRequest
    implements Built<CreateExperienceRequest, CreateExperienceRequestBuilder> {
  /// A long-form description of the experience
  @BuiltValueField(wireName: r'description')
  String get description;

  /// The location where the experience was gained
  @BuiltValueField(wireName: r'location')
  String get location;

  /// When the event/... that gained the experience started
  @BuiltValueField(wireName: r'start')
  DateTime get start;

  /// The title of the experience
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The type of experience to create
  @BuiltValueField(wireName: r'type')
  CreateExperienceRequestTypeEnum get type;
  // enum typeEnum {  event,  training,  work,  };

  /// When the event/... that gained the experience ended
  @BuiltValueField(wireName: r'end')
  DateTime? get end;

  CreateExperienceRequest._();

  factory CreateExperienceRequest(
          [void updates(CreateExperienceRequestBuilder b)]) =
      _$CreateExperienceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateExperienceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateExperienceRequest> get serializer =>
      _$CreateExperienceRequestSerializer();
}

class _$CreateExperienceRequestSerializer
    implements PrimitiveSerializer<CreateExperienceRequest> {
  @override
  final Iterable<Type> types = const [
    CreateExperienceRequest,
    _$CreateExperienceRequest
  ];

  @override
  final String wireName = r'CreateExperienceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateExperienceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(String),
    );
    yield r'start';
    yield serializers.serialize(
      object.start,
      specifiedType: const FullType(DateTime),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(CreateExperienceRequestTypeEnum),
    );
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateExperienceRequest object, {
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
    required CreateExperienceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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
            specifiedType: const FullType(CreateExperienceRequestTypeEnum),
          ) as CreateExperienceRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.end = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateExperienceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateExperienceRequestBuilder();
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

class CreateExperienceRequestTypeEnum extends EnumClass {
  /// The type of experience to create
  @BuiltValueEnumConst(wireName: r'event')
  static const CreateExperienceRequestTypeEnum event =
      _$createExperienceRequestTypeEnum_event;

  /// The type of experience to create
  @BuiltValueEnumConst(wireName: r'training')
  static const CreateExperienceRequestTypeEnum training =
      _$createExperienceRequestTypeEnum_training;

  /// The type of experience to create
  @BuiltValueEnumConst(wireName: r'work', fallback: true)
  static const CreateExperienceRequestTypeEnum work =
      _$createExperienceRequestTypeEnum_work;

  static Serializer<CreateExperienceRequestTypeEnum> get serializer =>
      _$createExperienceRequestTypeEnumSerializer;

  const CreateExperienceRequestTypeEnum._(String name) : super(name);

  static BuiltSet<CreateExperienceRequestTypeEnum> get values =>
      _$createExperienceRequestTypeEnumValues;
  static CreateExperienceRequestTypeEnum valueOf(String name) =>
      _$createExperienceRequestTypeEnumValueOf(name);
}
