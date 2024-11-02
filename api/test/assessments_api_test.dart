import 'package:test/test.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

/// tests for AssessmentsApi
void main() {
  final instance = PaceVetApi().getAssessmentsApi();

  group(AssessmentsApi, () {
    // Request a review to a set of attachments
    //
    //Future<String> paceVetWebApiV1AssessmentsControllerCreate({ CreateAssessmentRequest createAssessmentRequest }) async
    test('test paceVetWebApiV1AssessmentsControllerCreate', () async {
      // TODO
    });

    // Gets all assessments for the current user
    //
    //Future<BuiltList<Assessment>> paceVetWebApiV1AssessmentsControllerIndex(String type) async
    test('test paceVetWebApiV1AssessmentsControllerIndex', () async {
      // TODO
    });

    // Updates a review
    //
    //Future<Review> paceVetWebApiV1AssessmentsControllerReview(int id, int review, { UpdateReviewRequest updateReviewRequest }) async
    test('test paceVetWebApiV1AssessmentsControllerReview', () async {
      // TODO
    });

    // Gets an assessment by it's ID
    //
    //Future<Assessment> paceVetWebApiV1AssessmentsControllerShow(int id) async
    test('test paceVetWebApiV1AssessmentsControllerShow', () async {
      // TODO
    });
  });
}
