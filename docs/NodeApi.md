# swagger.api.NodeApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiNodeGetLatestMilestoneIndexGet**](NodeApi.md#apiNodeGetLatestMilestoneIndexGet) | **GET** /api/Node/GetLatestMilestoneIndex | Milestone index based on the pool of IOTA nodes the given gateway partners with
[**apiNodeGetNodeInfoGet**](NodeApi.md#apiNodeGetNodeInfoGet) | **GET** /api/Node/GetNodeInfo | Basic summary of an IOTA node and its status


# **apiNodeGetLatestMilestoneIndexGet**
> int apiNodeGetLatestMilestoneIndexGet()

Milestone index based on the pool of IOTA nodes the given gateway partners with

The milestone index is based on the index that is gotten during the health check procedure which is performed independently every 2 minutes

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NodeApi();

try { 
    var result = api_instance.apiNodeGetLatestMilestoneIndexGet();
    print(result);
} catch (e) {
    print("Exception when calling NodeApi->apiNodeGetLatestMilestoneIndexGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiNodeGetNodeInfoGet**
> NodeInfo apiNodeGetNodeInfoGet()

Basic summary of an IOTA node and its status

Please note, the gateway usually partners with several IOTA load balancers/IOTA nodes and so the results differ based on the actual node that was selected for the particular API call

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NodeApi();

try { 
    var result = api_instance.apiNodeGetNodeInfoGet();
    print(result);
} catch (e) {
    print("Exception when calling NodeApi->apiNodeGetNodeInfoGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NodeInfo**](NodeInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

