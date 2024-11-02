# pace_vet_api.api.CompetencesApi

## Load the API package
```dart
import 'package:pace_vet_api/api.dart';
```

All URIs are relative to *http://localhost:4000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paceVetWebApiV1CompetencesControllerIndex**](CompetencesApi.md#pacevetwebapiv1competencescontrollerindex) | **GET** /api/v1/competences/categories | Gets all categories and linked competences available
[**paceVetWebApiV1CompetencesControllerShow**](CompetencesApi.md#pacevetwebapiv1competencescontrollershow) | **GET** /api/v1/competences/categories/{key} | 


# **paceVetWebApiV1CompetencesControllerIndex**
> BuiltList<Category> paceVetWebApiV1CompetencesControllerIndex()

Gets all categories and linked competences available

### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getCompetencesApi();

try {
    final response = api.paceVetWebApiV1CompetencesControllerIndex();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CompetencesApi->paceVetWebApiV1CompetencesControllerIndex: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Category&gt;**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paceVetWebApiV1CompetencesControllerShow**
> Category paceVetWebApiV1CompetencesControllerShow(key)



### Example
```dart
import 'package:pace_vet_api/api.dart';

final api = PaceVetApi().getCompetencesApi();
final String key = 00; // String | The key of the category to look up

try {
    final response = api.paceVetWebApiV1CompetencesControllerShow(key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CompetencesApi->paceVetWebApiV1CompetencesControllerShow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the category to look up | 

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

