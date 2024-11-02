# pace_vet_api.model.RegisterRequest

## Load the model package
```dart
import 'package:pace_vet_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | Address where the user is living | 
**dateOfBirth** | [**Date**](Date.md) | When the user was born, used for calculating age etc | 
**familyName** | **String** | The family name(s) of the user | 
**name** | **String** | Primary name of the user | 
**publicProfile** | **bool** | Whether this profile can be shown to other users by default | 
**totp** | **String** | A base32 encoded string representing 20 bytes of data, used for 2FA | 
**types** | [**BuiltList&lt;UserType&gt;**](UserType.md) | The type (or types) of user to create | 
**verification** | **String** | A TOTP token generated from the totp data passed | 
**email** | **String** | Email address to which communication will be sent, also used for signing in | [optional] 
**password** | **String** | The password with which the user will sign in | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


