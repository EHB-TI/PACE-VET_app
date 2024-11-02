# pace_vet_api.model.User

## Load the model package
```dart
import 'package:pace_vet_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | Address where the user is living | [optional] 
**dateOfBirth** | [**Date**](Date.md) | When the user was born, used for calculating age etc | [optional] 
**email** | **String** | Email address to which communication will be sent, also used for signing in | [optional] 
**familyName** | **String** | The family name(s) of the user | [optional] 
**id** | **String** | The unique identifier of this user | [optional] 
**insertedAt** | [**DateTime**](DateTime.md) | When the user was originally created | [optional] 
**name** | **String** | Primary name of the user | [optional] 
**publicProfile** | **bool** | Whether this profile can be shown to other users by default | [optional] 
**types** | [**BuiltList&lt;UserType&gt;**](UserType.md) | The type (or types) of user to create | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


