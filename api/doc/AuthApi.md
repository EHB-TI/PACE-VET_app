# pace_vet_api.api.AuthApi

## Load the API package
```dart
import 'package:pace_vet_api/api.dart';
```

All URIs are relative to *http://localhost:4000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paceVetWebApiV1AccountsControllerAcceptMentorInvite**](AuthApi.md#pacevetwebapiv1accountscontrolleracceptmentorinvite) | **GET** /api/v1/user/mentors/accept-invite | Accepts an invitation to be a mentor for the candidate
[**paceVetWebApiV1AccountsControllerAssessors**](AuthApi.md#pacevetwebapiv1accountscontrollerassessors) | **GET** /api/v1/user/assessors | Retrieves a list of assessors for the current user
[**paceVetWebApiV1AccountsControllerGetUser**](AuthApi.md#pacevetwebapiv1accountscontrollergetuser) | **GET** /api/v1/user | Retrieves the currently authenticated user
[**paceVetWebApiV1AccountsControllerInviteMentor**](AuthApi.md#pacevetwebapiv1accountscontrollerinvitementor) | **POST** /api/v1/user/mentors | Invites another user to be your mentor
[**paceVetWebApiV1AccountsControllerLogin**](AuthApi.md#pacevetwebapiv1accountscontrollerlogin) | **POST** /api/v1/login | Attempts to sign a user in
[**paceVetWebApiV1AccountsControllerMentors**](AuthApi.md#pacevetwebapiv1accountscontrollermentors) | **GET** /api/v1/user/mentors | Retrieves a list of mentors for the current user
[**paceVetWebApiV1AccountsControllerMfa**](AuthApi.md#pacevetwebapiv1accountscontrollermfa) | **POST** /api/v1/2fa | Attempts to complete the MFA challenge
[**paceVetWebApiV1AccountsControllerRefresh**](AuthApi.md#pacevetwebapiv1accountscontrollerrefresh) | **POST** /api/v1/refresh | Attempts to complete the MFA challenge
[**paceVetWebApiV1AccountsControllerRegister**](AuthApi.md#pacevetwebapiv1accountscontrollerregister) | **POST** /api/v1/register | Attempts to create a new user
[**paceVetWebApiV1AccountsControllerUpdateUser**](AuthApi.md#pacevetwebapiv1accountscontrollerupdateuser) | **PATCH** /api/v1/user | Updates the currently authenticated user


# **paceVetWebApiV1AccountsControllerAcceptMentorInvite**
> String paceVetWebApiV1AccountsControllerAcceptMentorInvite(token)

Accepts an invitation to be a mentor for the candidate

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();
final String token = token; // String | The accept token of the mentor invite

try {
    final response = api.paceVetWebApiV1AccountsControllerAcceptMentorInvite(token);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerAcceptMentorInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| The accept token of the mentor invite | 

### Return type

**String**

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerAssessors**
> BuiltList<User> paceVetWebApiV1AccountsControllerAssessors()

Retrieves a list of assessors for the current user

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();

try {
    final response = api.paceVetWebApiV1AccountsControllerAssessors();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerAssessors: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;User&gt;**](User.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerGetUser**
> User paceVetWebApiV1AccountsControllerGetUser()

Retrieves the currently authenticated user

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();

try {
    final response = api.paceVetWebApiV1AccountsControllerGetUser();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerGetUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerInviteMentor**
> String paceVetWebApiV1AccountsControllerInviteMentor(mentorRequest)

Invites another user to be your mentor

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();
final MentorRequest mentorRequest = ; // MentorRequest | Mentor

try {
    final response = api.paceVetWebApiV1AccountsControllerInviteMentor(mentorRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerInviteMentor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mentorRequest** | [**MentorRequest**](MentorRequest.md)| Mentor | [optional] 

### Return type

**String**

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerLogin**
> LoginResponse paceVetWebApiV1AccountsControllerLogin(loginRequest)

Attempts to sign a user in

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();
final LoginRequest loginRequest = ; // LoginRequest | Credentials

try {
    final response = api.paceVetWebApiV1AccountsControllerLogin(loginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)| Credentials | [optional] 

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerMentors**
> BuiltList<User> paceVetWebApiV1AccountsControllerMentors()

Retrieves a list of mentors for the current user

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();

try {
    final response = api.paceVetWebApiV1AccountsControllerMentors();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerMentors: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;User&gt;**](User.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerMfa**
> TokenPairResponse paceVetWebApiV1AccountsControllerMfa(mfaRequest)

Attempts to complete the MFA challenge

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();
final MfaRequest mfaRequest = ; // MfaRequest | Credentials

try {
    final response = api.paceVetWebApiV1AccountsControllerMfa(mfaRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerMfa: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mfaRequest** | [**MfaRequest**](MfaRequest.md)| Credentials | [optional] 

### Return type

[**TokenPairResponse**](TokenPairResponse.md)

### Authorization

[mfa](../README.md#mfa)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerRefresh**
> TokenPairResponse paceVetWebApiV1AccountsControllerRefresh()

Attempts to complete the MFA challenge

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();

try {
    final response = api.paceVetWebApiV1AccountsControllerRefresh();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerRefresh: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenPairResponse**](TokenPairResponse.md)

### Authorization

[refresh](../README.md#refresh)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerRegister**
> User paceVetWebApiV1AccountsControllerRegister(registerRequest)

Attempts to create a new user

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();
final RegisterRequest registerRequest = ; // RegisterRequest | User parameters

try {
    final response = api.paceVetWebApiV1AccountsControllerRegister(registerRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerRegister: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md)| User parameters | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AccountsControllerUpdateUser**
> User paceVetWebApiV1AccountsControllerUpdateUser(updateUserRequest)

Updates the currently authenticated user

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAuthApi();
final UpdateUserRequest updateUserRequest = ; // UpdateUserRequest | UpdateUser

try {
    final response = api.paceVetWebApiV1AccountsControllerUpdateUser(updateUserRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->paceVetWebApiV1AccountsControllerUpdateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md)| UpdateUser | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

