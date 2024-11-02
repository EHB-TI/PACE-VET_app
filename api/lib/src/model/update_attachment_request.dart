//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_attachment_request.g.dart';

/// Describes a request to update an attachment for an experience
///
/// Properties:
/// * [description] - The description of the attachment
@BuiltValue()
abstract class UpdateAttachmentRequest
    implements Built<UpdateAttachmentRequest, UpdateAttachmentRequestBuilder> {
  /// The description of the attachment
  @BuiltValueField(wireName: r'description')
  String get description;

  UpdateAttachmentRequest._();

  factory UpdateAttachmentRequest(
          [void updates(UpdateAttachmentRequestBuilder b)]) =
      _$UpdateAttachmentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAttachmentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAttachmentRequest> get serializer =>
      _$UpdateAttachmentRequestSerializer();
}

class _$UpdateAttachmentRequestSerializer
    implements PrimitiveSerializer<UpdateAttachmentRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateAttachmentRequest,
    _$UpdateAttachmentRequest
  ];

  @override
  final String wireName = r'UpdateAttachmentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAttachmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAttachmentRequest object, {
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
    required UpdateAttachmentRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateAttachmentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAttachmentRequestBuilder();
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
