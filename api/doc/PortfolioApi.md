# pace_vet_api.api.PortfolioApi

## Load the API package
```dart
import 'package:pace_vet_api/api.dart';
```

All URIs are relative to *http://localhost:4000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paceVetWebApiV1AttachmentsControllerCreate**](PortfolioApi.md#pacevetwebapiv1attachmentscontrollercreate) | **POST** /api/v1/portfolio/experiences/{id}/attachments | Create an attachment for an existing experience
[**paceVetWebApiV1AttachmentsControllerDelete**](PortfolioApi.md#pacevetwebapiv1attachmentscontrollerdelete) | **DELETE** /api/v1/portfolio/experiences/{experience}/attachments/{id} | Delete an existing attachment
[**paceVetWebApiV1AttachmentsControllerUpdate**](PortfolioApi.md#pacevetwebapiv1attachmentscontrollerupdate) | **PATCH** /api/v1/portfolio/experiences/{experience}/attachments/{attachment} | Updates an existing attachment
[**paceVetWebApiV1ExperiencesControllerCompetences**](PortfolioApi.md#pacevetwebapiv1experiencescontrollercompetences) | **GET** /api/v1/portfolio/competences | Fetches all experiences from the portfolio for the current user
[**paceVetWebApiV1ExperiencesControllerCreate**](PortfolioApi.md#pacevetwebapiv1experiencescontrollercreate) | **POST** /api/v1/portfolio/experiences | Creates a new experience in the portfolio
[**paceVetWebApiV1ExperiencesControllerDelete**](PortfolioApi.md#pacevetwebapiv1experiencescontrollerdelete) | **DELETE** /api/v1/portfolio/experiences/{id} | Removes the experience identified by the given ID
[**paceVetWebApiV1ExperiencesControllerForCompetence**](PortfolioApi.md#pacevetwebapiv1experiencescontrollerforcompetence) | **GET** /api/v1/portfolio/competence/{competence} | Fetches all experiences from the portfolio for the current user that prove the given competence
[**paceVetWebApiV1ExperiencesControllerIndex**](PortfolioApi.md#pacevetwebapiv1experiencescontrollerindex) | **GET** /api/v1/portfolio/experiences | Fetches all experiences from the portfolio for the current user
[**paceVetWebApiV1ExperiencesControllerShow**](PortfolioApi.md#pacevetwebapiv1experiencescontrollershow) | **GET** /api/v1/portfolio/experiences/{id} | Fetches a specific experience from the portfolio by it&#39;s ID
[**paceVetWebApiV1ExperiencesControllerUpdate**](PortfolioApi.md#pacevetwebapiv1experiencescontrollerupdate) | **PATCH** /api/v1/portfolio/experiences/{id} | Updates a specific experience from the portfolio by it&#39;s ID


# **paceVetWebApiV1AttachmentsControllerCreate**
> Attachment paceVetWebApiV1AttachmentsControllerCreate(id, competences, description, upload)

Create an attachment for an existing experience

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();
final int id = 1; // int | The ID of the experience to create an attachment for
final String competences = competences_example; // String | A comma separated list of competence keys to associate with this attachment
final String description = description_example; // String | The description of the attachments
final MultipartFile upload = BINARY_DATA_HERE; // MultipartFile | The attachment file that needs to be uploaded

try {
    final response = api.paceVetWebApiV1AttachmentsControllerCreate(id, competences, description, upload);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1AttachmentsControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the experience to create an attachment for | 
 **competences** | **String**| A comma separated list of competence keys to associate with this attachment | 
 **description** | **String**| The description of the attachments | 
 **upload** | **MultipartFile**| The attachment file that needs to be uploaded | 

### Return type

[**Attachment**](Attachment.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AttachmentsControllerDelete**
> String paceVetWebApiV1AttachmentsControllerDelete(experience, id)

Delete an existing attachment

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();
final int experience = 1; // int | The ID of the experience to delete an attachment for
final int id = 1; // int | The ID of the attachment to delete

try {
    final response = api.paceVetWebApiV1AttachmentsControllerDelete(experience, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1AttachmentsControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experience** | **int**| The ID of the experience to delete an attachment for | 
 **id** | **int**| The ID of the attachment to delete | 

### Return type

**String**

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AttachmentsControllerUpdate**
> Attachment paceVetWebApiV1AttachmentsControllerUpdate(experience, attachment, description, upload)

Updates an existing attachment

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();
final int experience = 1; // int | The ID of the experience to update an attachment for
final int attachment = 1; // int | The ID of the attachment to update
final String description = description_example; // String | The description of the attachment
final MultipartFile upload = BINARY_DATA_HERE; // MultipartFile | The attachment file that needs to be uploaded

try {
    final response = api.paceVetWebApiV1AttachmentsControllerUpdate(experience, attachment, description, upload);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1AttachmentsControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experience** | **int**| The ID of the experience to update an attachment for | 
 **attachment** | **int**| The ID of the attachment to update | 
 **description** | **String**| The description of the attachment | 
 **upload** | **MultipartFile**| The attachment file that needs to be uploaded | [optional] 

### Return type

[**Attachment**](Attachment.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1ExperiencesControllerCompetences**
> BuiltList<Competence> paceVetWebApiV1ExperiencesControllerCompetences()

Fetches all experiences from the portfolio for the current user

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();

try {
    final response = api.paceVetWebApiV1ExperiencesControllerCompetences();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1ExperiencesControllerCompetences: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Competence&gt;**](Competence.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1ExperiencesControllerCreate**
> Experience paceVetWebApiV1ExperiencesControllerCreate(createExperienceRequest)

Creates a new experience in the portfolio

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();
final CreateExperienceRequest createExperienceRequest = ; // CreateExperienceRequest | Experience request

try {
    final response = api.paceVetWebApiV1ExperiencesControllerCreate(createExperienceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1ExperiencesControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createExperienceRequest** | [**CreateExperienceRequest**](CreateExperienceRequest.md)| Experience request | [optional] 

### Return type

[**Experience**](Experience.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1ExperiencesControllerDelete**
> String paceVetWebApiV1ExperiencesControllerDelete(id)

Removes the experience identified by the given ID

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();
final int id = 1; // int | The ID of the experience to delete

try {
    final response = api.paceVetWebApiV1ExperiencesControllerDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1ExperiencesControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the experience to delete | 

### Return type

**String**

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1ExperiencesControllerForCompetence**
> BuiltList<Experience> paceVetWebApiV1ExperiencesControllerForCompetence(competence)

Fetches all experiences from the portfolio for the current user that prove the given competence

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();
final String competence = 00 00 00 03 10; // String | The key of the competence to look up for

try {
    final response = api.paceVetWebApiV1ExperiencesControllerForCompetence(competence);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1ExperiencesControllerForCompetence: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **competence** | **String**| The key of the competence to look up for | 

### Return type

[**BuiltList&lt;Experience&gt;**](Experience.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1ExperiencesControllerIndex**
> BuiltList<Experience> paceVetWebApiV1ExperiencesControllerIndex()

Fetches all experiences from the portfolio for the current user

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();

try {
    final response = api.paceVetWebApiV1ExperiencesControllerIndex();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1ExperiencesControllerIndex: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Experience&gt;**](Experience.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1ExperiencesControllerShow**
> Experience paceVetWebApiV1ExperiencesControllerShow(id)

Fetches a specific experience from the portfolio by it's ID

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();
final int id = 1; // int | The ID of the experience to retrieve

try {
    final response = api.paceVetWebApiV1ExperiencesControllerShow(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1ExperiencesControllerShow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the experience to retrieve | 

### Return type

[**Experience**](Experience.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1ExperiencesControllerUpdate**
> Experience paceVetWebApiV1ExperiencesControllerUpdate(id, updateExperienceRequest)

Updates a specific experience from the portfolio by it's ID

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getPortfolioApi();
final int id = 1; // int | The ID of the experience to update
final UpdateExperienceRequest updateExperienceRequest = ; // UpdateExperienceRequest | Experience request

try {
    final response = api.paceVetWebApiV1ExperiencesControllerUpdate(id, updateExperienceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PortfolioApi->paceVetWebApiV1ExperiencesControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the experience to update | 
 **updateExperienceRequest** | [**UpdateExperienceRequest**](UpdateExperienceRequest.md)| Experience request | [optional] 

### Return type

[**Experience**](Experience.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

