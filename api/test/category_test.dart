import 'package:test/test.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

// tests for Category
void main() {
  final instance = CategoryBuilder();
  // TODO add properties to the builder and call build()

  group(Category, () {
    // A list of competences that are associated with this category
    // BuiltList<Competence> competences
    test('to test the property `competences`', () async {
      // TODO
    });

    // The unique key to identify this category
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // The human-readable title of this category
    // String title
    test('to test the property `title`', () async {
      // TODO
    });
  });
}
