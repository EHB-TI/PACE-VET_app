import 'package:test/test.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

/// tests for CompetencesApi
void main() {
  final instance = PaceVetApi().getCompetencesApi();

  group(CompetencesApi, () {
    // Gets all categories and linked competences available
    //
    //Future<BuiltList<Category>> paceVetWebApiV1CompetencesControllerIndex() async
    test('test paceVetWebApiV1CompetencesControllerIndex', () async {
      // TODO
    });

    //Future<Category> paceVetWebApiV1CompetencesControllerShow(String key) async
    test('test paceVetWebApiV1CompetencesControllerShow', () async {
      // TODO
    });
  });
}
