//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_experience_request.g.dart';

/// Describes a request to update an existing experience
///
/// Properties:
/// * [description] - A long-form description of the experience
/// * [end] - When the event/... that gained the experience ended
/// * [location] - The location where the experience was gained
/// * [start] - When the event/... that gained the experience started
/// * [title] - The title of the experience
/// * [type] - The type of experience
@BuiltValue()
abstract class UpdateExperienceRequest
    implements Built<UpdateExperienceRequest, UpdateExperienceRequestBuilder> {
  /// A long-form description of the experience
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// When the event/... that gained the experience ended
  @BuiltValueField(wireName: r'end')
  DateTime? get end;

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
  UpdateExperienceRequestTypeEnum? get type;
  // enum typeEnum {  event,  training,  work,  };

  UpdateExperienceRequest._();

  factory UpdateExperienceRequest(
          [void updates(UpdateExperienceRequestBuilder b)]) =
      _$UpdateExperienceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateExperienceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateExperienceRequest> get serializer =>
      _$UpdateExperienceRequestSerializer();
}

class _$UpdateExperienceRequestSerializer
    implements PrimitiveSerializer<UpdateExperienceRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateExperienceRequest,
    _$UpdateExperienceRequest
  ];

  @override
  final String wireName = r'UpdateExperienceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateExperienceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(UpdateExperienceRequestTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateExperienceRequest object, {
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
    required UpdateExperienceRequestBuilder result,
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
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.end = valueDes;
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
            specifiedType: const FullType(UpdateExperienceRequestTypeEnum),
          ) as UpdateExperienceRequestTypeEnum;
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
  UpdateExperienceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateExperienceRequestBuilder();
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

class UpdateExperienceRequestTypeEnum extends EnumClass {
  /// The type of experience
  @BuiltValueEnumConst(wireName: r'event')
  static const UpdateExperienceRequestTypeEnum event =
      _$updateExperienceRequestTypeEnum_event;

  /// The type of experience
  @BuiltValueEnumConst(wireName: r'training')
  static const UpdateExperienceRequestTypeEnum training =
      _$updateExperienceRequestTypeEnum_training;

  /// The type of experience
  @BuiltValueEnumConst(wireName: r'work', fallback: true)
  static const UpdateExperienceRequestTypeEnum work =
      _$updateExperienceRequestTypeEnum_work;

  static Serializer<UpdateExperienceRequestTypeEnum> get serializer =>
      _$updateExperienceRequestTypeEnumSerializer;

  const UpdateExperienceRequestTypeEnum._(String name) : super(name);

  static BuiltSet<UpdateExperienceRequestTypeEnum> get values =>
      _$updateExperienceRequestTypeEnumValues;
  static UpdateExperienceRequestTypeEnum valueOf(String name) =>
      _$updateExperienceRequestTypeEnumValueOf(name);
}
