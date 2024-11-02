import 'package:test/test.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

// tests for Attachment
void main() {
  final instance = AttachmentBuilder();
  // TODO add properties to the builder and call build()

  group(Attachment, () {
    // A list of competences that are proven by this attachment
    // BuiltList<Competence> competences
    test('to test the property `competences`', () async {
      // TODO
    });

    // The MIME type of the attachment that was uploaded
    // String contentType
    test('to test the property `contentType`', () async {
      // TODO
    });

    // A long-form description of the attachment
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Experience experience
    test('to test the property `experience`', () async {
      // TODO
    });

    // An URL to download the file of this attachment
    // String file
    test('to test the property `file`', () async {
      // TODO
    });

    // The unique identifier of this attachment
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // An URL to download a preview of this attachment
    // String preview
    test('to test the property `preview`', () async {
      // TODO
    });
  });
}
