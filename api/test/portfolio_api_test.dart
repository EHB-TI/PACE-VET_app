import 'package:test/test.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

/// tests for PortfolioApi
void main() {
  final instance = PaceVetApi().getPortfolioApi();

  group(PortfolioApi, () {
    // Create an attachment for an existing experience
    //
    //Future<Attachment> paceVetWebApiV1AttachmentsControllerCreate(int id, BuiltList<String> competences, String description, MultipartFile upload) async
    test('test paceVetWebApiV1AttachmentsControllerCreate', () async {
      // TODO
    });

    // Delete an existing attachment
    //
    //Future<String> paceVetWebApiV1AttachmentsControllerDelete(int experience, int id) async
    test('test paceVetWebApiV1AttachmentsControllerDelete', () async {
      // TODO
    });

    // Creates a new experience in the portfolio
    //
    //Future<Experience> paceVetWebApiV1ExperiencesControllerCreate({ CreateExperienceRequest createExperienceRequest }) async
    test('test paceVetWebApiV1ExperiencesControllerCreate', () async {
      // TODO
    });

    // Removes the experience identified by the given ID
    //
    //Future<String> paceVetWebApiV1ExperiencesControllerDelete(int id) async
    test('test paceVetWebApiV1ExperiencesControllerDelete', () async {
      // TODO
    });

    // Fetches a specific experience from the portfolio by it's ID
    //
    //Future<Experience> paceVetWebApiV1ExperiencesControllerShow(int id) async
    test('test paceVetWebApiV1ExperiencesControllerShow', () async {
      // TODO
    });
  });
}
