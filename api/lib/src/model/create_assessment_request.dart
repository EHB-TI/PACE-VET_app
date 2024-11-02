//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_assessment_request.g.dart';

/// Describes a request to create an assessment for an experience
///
/// Properties:
/// * [assessor] - The ID of the user that should assess the competences
/// * [competences] - A list of keys of competences to review
@BuiltValue()
abstract class CreateAssessmentRequest
    implements Built<CreateAssessmentRequest, CreateAssessmentRequestBuilder> {
  /// The ID of the user that should assess the competences
  @BuiltValueField(wireName: r'assessor')
  num get assessor;

  /// A list of keys of competences to review
  @BuiltValueField(wireName: r'competences')
  BuiltList<String> get competences;

  CreateAssessmentRequest._();

  factory CreateAssessmentRequest(
          [void updates(CreateAssessmentRequestBuilder b)]) =
      _$CreateAssessmentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAssessmentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAssessmentRequest> get serializer =>
      _$CreateAssessmentRequestSerializer();
}

class _$CreateAssessmentRequestSerializer
    implements PrimitiveSerializer<CreateAssessmentRequest> {
  @override
  final Iterable<Type> types = const [
    CreateAssessmentRequest,
    _$CreateAssessmentRequest
  ];

  @override
  final String wireName = r'CreateAssessmentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAssessmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assessor';
    yield serializers.serialize(
      object.assessor,
      specifiedType: const FullType(num),
    );
    yield r'competences';
    yield serializers.serialize(
      object.competences,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAssessmentRequest object, {
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
    required CreateAssessmentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assessor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.assessor = valueDes;
          break;
        case r'competences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.competences.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateAssessmentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAssessmentRequestBuilder();
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
