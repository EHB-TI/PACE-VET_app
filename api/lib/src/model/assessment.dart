//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pace_vet_api/src/model/review.dart';
import 'package:built_collection/built_collection.dart';
import 'package:pace_vet_api/src/model/minimal_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment.g.dart';

/// Describes how an assessment will be returned by the API
///
/// Properties:
/// * [assessor]
/// * [candidate]
/// * [id] - The unique identifier of this assessment
/// * [reviews] - The reviews that are attached to this assessment
/// * [state] - The overall state of this assessment
@BuiltValue()
abstract class Assessment implements Built<Assessment, AssessmentBuilder> {
  @BuiltValueField(wireName: r'assessor')
  MinimalUser? get assessor;

  @BuiltValueField(wireName: r'candidate')
  MinimalUser? get candidate;

  /// The unique identifier of this assessment
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// The reviews that are attached to this assessment
  @BuiltValueField(wireName: r'reviews')
  BuiltList<Review>? get reviews;

  /// The overall state of this assessment
  @BuiltValueField(wireName: r'state')
  AssessmentStateEnum? get state;
  // enum stateEnum {  pending,  approved,  rejected,  unknown,  };

  Assessment._();

  factory Assessment([void updates(AssessmentBuilder b)]) = _$Assessment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Assessment> get serializer => _$AssessmentSerializer();
}

class _$AssessmentSerializer implements PrimitiveSerializer<Assessment> {
  @override
  final Iterable<Type> types = const [Assessment, _$Assessment];

  @override
  final String wireName = r'Assessment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Assessment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assessor != null) {
      yield r'assessor';
      yield serializers.serialize(
        object.assessor,
        specifiedType: const FullType(MinimalUser),
      );
    }
    if (object.candidate != null) {
      yield r'candidate';
      yield serializers.serialize(
        object.candidate,
        specifiedType: const FullType(MinimalUser),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.reviews != null) {
      yield r'reviews';
      yield serializers.serialize(
        object.reviews,
        specifiedType: const FullType(BuiltList, [FullType(Review)]),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(AssessmentStateEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Assessment object, {
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
    required AssessmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assessor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MinimalUser),
          ) as MinimalUser;
          result.assessor.replace(valueDes);
          break;
        case r'candidate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MinimalUser),
          ) as MinimalUser;
          result.candidate.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'reviews':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Review)]),
          ) as BuiltList<Review>;
          result.reviews.replace(valueDes);
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssessmentStateEnum),
          ) as AssessmentStateEnum;
          result.state = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Assessment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentBuilder();
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

class AssessmentStateEnum extends EnumClass {
  /// The overall state of this assessment
  @BuiltValueEnumConst(wireName: r'pending')
  static const AssessmentStateEnum pending = _$assessmentStateEnum_pending;

  /// The overall state of this assessment
  @BuiltValueEnumConst(wireName: r'approved')
  static const AssessmentStateEnum approved = _$assessmentStateEnum_approved;

  /// The overall state of this assessment
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AssessmentStateEnum rejected = _$assessmentStateEnum_rejected;

  /// The overall state of this assessment
  @BuiltValueEnumConst(wireName: r'unknown', fallback: true)
  static const AssessmentStateEnum unknown = _$assessmentStateEnum_unknown;

  static Serializer<AssessmentStateEnum> get serializer =>
      _$assessmentStateEnumSerializer;

  const AssessmentStateEnum._(String name) : super(name);

  static BuiltSet<AssessmentStateEnum> get values =>
      _$assessmentStateEnumValues;
  static AssessmentStateEnum valueOf(String name) =>
      _$assessmentStateEnumValueOf(name);
}
