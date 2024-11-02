//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mentor_request.g.dart';

/// Describes a request to invite another user to be your mentor
///
/// Properties:
/// * [email]
@BuiltValue()
abstract class MentorRequest
    implements Built<MentorRequest, MentorRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  MentorRequest._();

  factory MentorRequest([void updates(MentorRequestBuilder b)]) =
      _$MentorRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MentorRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MentorRequest> get serializer =>
      _$MentorRequestSerializer();
}

class _$MentorRequestSerializer implements PrimitiveSerializer<MentorRequest> {
  @override
  final Iterable<Type> types = const [MentorRequest, _$MentorRequest];

  @override
  final String wireName = r'MentorRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MentorRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MentorRequest object, {
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
    required MentorRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MentorRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MentorRequestBuilder();
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
