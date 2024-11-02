//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:pace_vet_api/src/date_serializer.dart';
import 'package:pace_vet_api/src/model/date.dart';

import 'package:pace_vet_api/src/model/assessment.dart';
import 'package:pace_vet_api/src/model/attachment.dart';
import 'package:pace_vet_api/src/model/category.dart';
import 'package:pace_vet_api/src/model/competence.dart';
import 'package:pace_vet_api/src/model/create_assessment_request.dart';
import 'package:pace_vet_api/src/model/create_experience_request.dart';
import 'package:pace_vet_api/src/model/experience.dart';
import 'package:pace_vet_api/src/model/login_request.dart';
import 'package:pace_vet_api/src/model/login_response.dart';
import 'package:pace_vet_api/src/model/mentor_request.dart';
import 'package:pace_vet_api/src/model/mfa_request.dart';
import 'package:pace_vet_api/src/model/minimal_user.dart';
import 'package:pace_vet_api/src/model/not_found.dart';
import 'package:pace_vet_api/src/model/not_found_errors.dart';
import 'package:pace_vet_api/src/model/register_request.dart';
import 'package:pace_vet_api/src/model/review.dart';
import 'package:pace_vet_api/src/model/review_state.dart';
import 'package:pace_vet_api/src/model/token_pair_response.dart';
import 'package:pace_vet_api/src/model/token_pair_response_access.dart';
import 'package:pace_vet_api/src/model/token_pair_response_refresh.dart';
import 'package:pace_vet_api/src/model/unprocessable_entity.dart';
import 'package:pace_vet_api/src/model/unprocessable_entity_errors_inner.dart';
import 'package:pace_vet_api/src/model/unprocessable_entity_errors_inner_source.dart';
import 'package:pace_vet_api/src/model/update_experience_request.dart';
import 'package:pace_vet_api/src/model/update_review_request.dart';
import 'package:pace_vet_api/src/model/update_user_request.dart';
import 'package:pace_vet_api/src/model/user.dart';
import 'package:pace_vet_api/src/model/user_type.dart';

part 'serializers.g.dart';

@SerializersFor([
  Assessment,
  Attachment,
  Category,
  Competence,
  CreateAssessmentRequest,
  CreateExperienceRequest,
  Experience,
  LoginRequest,
  LoginResponse,
  MentorRequest,
  MfaRequest,
  MinimalUser,
  NotFound,
  NotFoundErrors,
  RegisterRequest,
  Review,
  ReviewState,
  TokenPairResponse,
  TokenPairResponseAccess,
  TokenPairResponseRefresh,
  UnprocessableEntity,
  UnprocessableEntityErrorsInner,
  UnprocessableEntityErrorsInnerSource,
  UpdateExperienceRequest,
  UpdateReviewRequest,
  UpdateUserRequest,
  User,
  UserType,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(User)]),
        () => ListBuilder<User>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Competence)]),
        () => ListBuilder<Competence>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Experience)]),
        () => ListBuilder<Experience>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Assessment)]),
        () => ListBuilder<Assessment>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Category)]),
        () => ListBuilder<Category>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
