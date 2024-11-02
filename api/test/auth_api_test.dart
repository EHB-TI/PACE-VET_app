import 'package:test/test.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

/// tests for AuthApi
void main() {
  final instance = PaceVetApi().getAuthApi();

  group(AuthApi, () {
    // Accepts an invitation to be a mentor for the candidate
    //
    //Future<String> paceVetWebApiV1AccountsControllerAcceptMentorInvite(String token) async
    test('test paceVetWebApiV1AccountsControllerAcceptMentorInvite', () async {
      // TODO
    });

    // Retrieves the currently authenticated user
    //
    //Future<User> paceVetWebApiV1AccountsControllerGetUser() async
    test('test paceVetWebApiV1AccountsControllerGetUser', () async {
      // TODO
    });

    // Invites another user to be your mentor
    //
    //Future<String> paceVetWebApiV1AccountsControllerInviteMentor({ MentorRequest mentorRequest }) async
    test('test paceVetWebApiV1AccountsControllerInviteMentor', () async {
      // TODO
    });

    // Attempts to sign a user in
    //
    //Future<LoginResponse> paceVetWebApiV1AccountsControllerLogin({ LoginRequest loginRequest }) async
    test('test paceVetWebApiV1AccountsControllerLogin', () async {
      // TODO
    });

    // Retrieves a list of mentors for the current user
    //
    //Future<BuiltList<UsersResponseInner>> paceVetWebApiV1AccountsControllerMentors() async
    test('test paceVetWebApiV1AccountsControllerMentors', () async {
      // TODO
    });

    // Attempts to complete the MFA challenge
    //
    //Future<TokenPairResponse> paceVetWebApiV1AccountsControllerMfa({ MfaRequest mfaRequest }) async
    test('test paceVetWebApiV1AccountsControllerMfa', () async {
      // TODO
    });

    // Attempts to complete the MFA challenge
    //
    //Future<TokenPairResponse> paceVetWebApiV1AccountsControllerRefresh() async
    test('test paceVetWebApiV1AccountsControllerRefresh', () async {
      // TODO
    });

    // Attempts to create a new user
    //
    //Future<User> paceVetWebApiV1AccountsControllerRegister({ RegisterRequest registerRequest }) async
    test('test paceVetWebApiV1AccountsControllerRegister', () async {
      // TODO
    });
  });
}
