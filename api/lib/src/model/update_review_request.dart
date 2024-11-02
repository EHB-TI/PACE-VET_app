//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:pace_vet_api/src/model/review_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_review_request.g.dart';

/// Describes a request to update an existing review
///
/// Properties:
/// * [comment] - An optional comment to clarify the assigned state/decision
/// * [state]
@BuiltValue()
abstract class UpdateReviewRequest
    implements Built<UpdateReviewRequest, UpdateReviewRequestBuilder> {
  /// An optional comment to clarify the assigned state/decision
  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'state')
  ReviewState get state;
  // enum stateEnum {  pending,  approved,  rejected,  };

  UpdateReviewRequest._();

  factory UpdateReviewRequest([void updates(UpdateReviewRequestBuilder b)]) =
      _$UpdateReviewRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateReviewRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateReviewRequest> get serializer =>
      _$UpdateReviewRequestSerializer();
}

class _$UpdateReviewRequestSerializer
    implements PrimitiveSerializer<UpdateReviewRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateReviewRequest,
    _$UpdateReviewRequest
  ];

  @override
  final String wireName = r'UpdateReviewRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateReviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'comment';
    yield object.comment == null
        ? null
        : serializers.serialize(
            object.comment,
            specifiedType: const FullType.nullable(String),
          );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(ReviewState),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateReviewRequest object, {
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
    required UpdateReviewRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReviewState),
          ) as ReviewState;
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
  UpdateReviewRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateReviewRequestBuilder();
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
