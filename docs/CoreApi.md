# swagger.api.CoreApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCoreApiMapCallsGet**](CoreApi.md#apiCoreApiMapCallsGet) | **GET** /api/Core/ApiMapCalls | Summary of available API calls in a structured format
[**apiCoreStatusGet**](CoreApi.md#apiCoreStatusGet) | **GET** /api/Core/Status | Gateway Status
[**apiCoreStatusHead**](CoreApi.md#apiCoreStatusHead) | **HEAD** /api/Core/Status | Gateway Status


# **apiCoreApiMapCallsGet**
> NodeTree apiCoreApiMapCallsGet()

Summary of available API calls in a structured format

This is very simplified version of available API calls. If you are after Open API description file then it is better to get Swagger description via the Documentation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CoreApi();

try { 
    var result = api_instance.apiCoreApiMapCallsGet();
    print(result);
} catch (e) {
    print("Exception when calling CoreApi->apiCoreApiMapCallsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NodeTree**](NodeTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCoreStatusGet**
> GatewayStatus apiCoreStatusGet()

Gateway Status

This call can be used to verify whether the given gateway is online and ready to process your requests

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CoreApi();

try { 
    var result = api_instance.apiCoreStatusGet();
    print(result);
} catch (e) {
    print("Exception when calling CoreApi->apiCoreStatusGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GatewayStatus**](GatewayStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCoreStatusHead**
> GatewayStatus apiCoreStatusHead()

Gateway Status

This call can be used to verify whether the given gateway is online and ready to process your requests

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CoreApi();

try { 
    var result = api_instance.apiCoreStatusHead();
    print(result);
} catch (e) {
    print("Exception when calling CoreApi->apiCoreStatusHead: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GatewayStatus**](GatewayStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

