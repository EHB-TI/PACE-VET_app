// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Assessment.serializer)
      ..add(AssessmentStateEnum.serializer)
      ..add(Attachment.serializer)
      ..add(Category.serializer)
      ..add(Competence.serializer)
      ..add(CreateAssessmentRequest.serializer)
      ..add(CreateExperienceRequest.serializer)
      ..add(CreateExperienceRequestTypeEnum.serializer)
      ..add(Experience.serializer)
      ..add(ExperienceTypeEnum.serializer)
      ..add(LoginRequest.serializer)
      ..add(LoginResponse.serializer)
      ..add(MentorRequest.serializer)
      ..add(MfaRequest.serializer)
      ..add(MinimalUser.serializer)
      ..add(NotFound.serializer)
      ..add(NotFoundErrors.serializer)
      ..add(RegisterRequest.serializer)
      ..add(Review.serializer)
      ..add(ReviewState.serializer)
      ..add(TokenPairResponse.serializer)
      ..add(TokenPairResponseAccess.serializer)
      ..add(TokenPairResponseRefresh.serializer)
      ..add(UnprocessableEntity.serializer)
      ..add(UnprocessableEntityErrorsInner.serializer)
      ..add(UnprocessableEntityErrorsInnerSource.serializer)
      ..add(UpdateExperienceRequest.serializer)
      ..add(UpdateExperienceRequestTypeEnum.serializer)
      ..add(UpdateReviewRequest.serializer)
      ..add(UpdateUserRequest.serializer)
      ..add(User.serializer)
      ..add(UserType.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Attachment)]),
          () => new ListBuilder<Attachment>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Competence)]),
          () => new ListBuilder<Competence>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Competence)]),
          () => new ListBuilder<Competence>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Review)]),
          () => new ListBuilder<Review>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(UnprocessableEntityErrorsInner)]),
          () => new ListBuilder<UnprocessableEntityErrorsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserType)]),
          () => new ListBuilder<UserType>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserType)]),
          () => new ListBuilder<UserType>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserType)]),
          () => new ListBuilder<UserType>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
