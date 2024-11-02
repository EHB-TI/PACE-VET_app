# pace_vet_api.api.AssessmentsApi

## Load the API package
```dart
import 'package:pace_vet_api/api.dart';
```

All URIs are relative to *http://localhost:4000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paceVetWebApiV1AssessmentsControllerCreate**](AssessmentsApi.md#pacevetwebapiv1assessmentscontrollercreate) | **POST** /api/v1/assessments | Request a review to a set of attachments
[**paceVetWebApiV1AssessmentsControllerIndex**](AssessmentsApi.md#pacevetwebapiv1assessmentscontrollerindex) | **GET** /api/v1/assessments | Gets all assessments for the current user
[**paceVetWebApiV1AssessmentsControllerReview**](AssessmentsApi.md#pacevetwebapiv1assessmentscontrollerreview) | **PATCH** /api/v1/assessments/{id}/{review} | Updates a review
[**paceVetWebApiV1AssessmentsControllerShow**](AssessmentsApi.md#pacevetwebapiv1assessmentscontrollershow) | **GET** /api/v1/assessments/{id} | Gets an assessment by it&#39;s ID


# **paceVetWebApiV1AssessmentsControllerCreate**
> String paceVetWebApiV1AssessmentsControllerCreate(createAssessmentRequest)

Request a review to a set of attachments

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAssessmentsApi();
final CreateAssessmentRequest createAssessmentRequest = ; // CreateAssessmentRequest | Assessment request

try {
    final response = api.paceVetWebApiV1AssessmentsControllerCreate(createAssessmentRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AssessmentsApi->paceVetWebApiV1AssessmentsControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAssessmentRequest** | [**CreateAssessmentRequest**](CreateAssessmentRequest.md)| Assessment request | [optional] 

### Return type

**String**

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AssessmentsControllerIndex**
> BuiltList<Assessment> paceVetWebApiV1AssessmentsControllerIndex(type)

Gets all assessments for the current user

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAssessmentsApi();
final String type = assessor; // String | Whether to fetch the assessments where you are assessor or candidate

try {
    final response = api.paceVetWebApiV1AssessmentsControllerIndex(type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AssessmentsApi->paceVetWebApiV1AssessmentsControllerIndex: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Whether to fetch the assessments where you are assessor or candidate | 

### Return type

[**BuiltList&lt;Assessment&gt;**](Assessment.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AssessmentsControllerReview**
> Review paceVetWebApiV1AssessmentsControllerReview(id, review, updateReviewRequest)

Updates a review

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAssessmentsApi();
final int id = 1; // int | The ID of the assessment to retrieve
final int review = 1; // int | The ID of the review to update
final UpdateReviewRequest updateReviewRequest = ; // UpdateReviewRequest | Review request

try {
    final response = api.paceVetWebApiV1AssessmentsControllerReview(id, review, updateReviewRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AssessmentsApi->paceVetWebApiV1AssessmentsControllerReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the assessment to retrieve | 
 **review** | **int**| The ID of the review to update | 
 **updateReviewRequest** | [**UpdateReviewRequest**](UpdateReviewRequest.md)| Review request | [optional] 

### Return type

[**Review**](Review.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1AssessmentsControllerShow**
> Assessment paceVetWebApiV1AssessmentsControllerShow(id)

Gets an assessment by it's ID

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getAssessmentsApi();
final int id = 1; // int | The ID of the assessment to retrieve

try {
    final response = api.paceVetWebApiV1AssessmentsControllerShow(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AssessmentsApi->paceVetWebApiV1AssessmentsControllerShow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the assessment to retrieve | 

### Return type

[**Assessment**](Assessment.md)

### Authorization

[api](../README.md#api)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

