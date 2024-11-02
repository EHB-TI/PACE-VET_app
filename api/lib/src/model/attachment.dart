//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:pace_vet_api/src/model/competence.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attachment.g.dart';

/// An attachment to an experience, usually a video or image
///
/// Properties:
/// * [competences] - A list of competences that are proven by this attachment
/// * [contentType] - The MIME type of the attachment that was uploaded
/// * [description] - A long-form description of the attachment
/// * [file] - An URL to download the file of this attachment
/// * [id] - The unique identifier of this attachment
/// * [locked] - Whether this attachment can still be edited (locked means no longer editable)
/// * [preview] - An URL to download a preview of this attachment
@BuiltValue()
abstract class Attachment implements Built<Attachment, AttachmentBuilder> {
  /// A list of competences that are proven by this attachment
  @BuiltValueField(wireName: r'competences')
  BuiltList<Competence>? get competences;

  /// The MIME type of the attachment that was uploaded
  @BuiltValueField(wireName: r'content_type')
  String? get contentType;

  /// A long-form description of the attachment
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// An URL to download the file of this attachment
  @BuiltValueField(wireName: r'file')
  String? get file;

  /// The unique identifier of this attachment
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Whether this attachment can still be edited (locked means no longer editable)
  @BuiltValueField(wireName: r'locked')
  bool? get locked;

  /// An URL to download a preview of this attachment
  @BuiltValueField(wireName: r'preview')
  String? get preview;

  Attachment._();

  factory Attachment([void updates(AttachmentBuilder b)]) = _$Attachment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttachmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Attachment> get serializer => _$AttachmentSerializer();
}

class _$AttachmentSerializer implements PrimitiveSerializer<Attachment> {
  @override
  final Iterable<Type> types = const [Attachment, _$Attachment];

  @override
  final String wireName = r'Attachment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Attachment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.competences != null) {
      yield r'competences';
      yield serializers.serialize(
        object.competences,
        specifiedType: const FullType(BuiltList, [FullType(Competence)]),
      );
    }
    if (object.contentType != null) {
      yield r'content_type';
      yield serializers.serialize(
        object.contentType,
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
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.locked != null) {
      yield r'locked';
      yield serializers.serialize(
        object.locked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.preview != null) {
      yield r'preview';
      yield serializers.serialize(
        object.preview,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Attachment object, {
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
    required AttachmentBuilder result,
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
        case r'content_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentType = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.file = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'locked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.locked = valueDes;
          break;
        case r'preview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preview = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Attachment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachmentBuilder();
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
