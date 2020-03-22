# swagger.api.TangleApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiTangleAddressByAddressBalanceGet**](TangleApi.md#apiTangleAddressByAddressBalanceGet) | **GET** /api/Tangle/address/{address}/balance | Confirmed balance by IOTA address
[**apiTangleAddressByAddressSendtxPost**](TangleApi.md#apiTangleAddressByAddressSendtxPost) | **POST** /api/Tangle/address/{address}/sendtx | Send non-value transaction to the given IOTA address
[**apiTangleAddressByAddressTransactionsDetailsGet**](TangleApi.md#apiTangleAddressByAddressTransactionsDetailsGet) | **GET** /api/Tangle/address/{address}/transactions/details | Transactions with all details by IOTA address
[**apiTangleAddressByAddressTransactionsGet**](TangleApi.md#apiTangleAddressByAddressTransactionsGet) | **GET** /api/Tangle/address/{address}/transactions | Transaction hashes by IOTA address
[**apiTangleBundleByHashTransactionsDetailsGet**](TangleApi.md#apiTangleBundleByHashTransactionsDetailsGet) | **GET** /api/Tangle/bundle/{hash}/transactions/details | Transactions with all details by IOTA bundle
[**apiTangleBundleByHashTransactionsGet**](TangleApi.md#apiTangleBundleByHashTransactionsGet) | **GET** /api/Tangle/bundle/{hash}/transactions | Transaction hashes by IOTA bundle
[**apiTangleTransactionByHashGet**](TangleApi.md#apiTangleTransactionByHashGet) | **GET** /api/Tangle/transaction/{hash} | Transaction details by transaction hash


# **apiTangleAddressByAddressBalanceGet**
> AddressWithBalances apiTangleAddressByAddressBalanceGet(address)

Confirmed balance by IOTA address

It is based on the latest confirmed milestone

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TangleApi();
var address = address_example; // String | 

try { 
    var result = api_instance.apiTangleAddressByAddressBalanceGet(address);
    print(result);
} catch (e) {
    print("Exception when calling TangleApi->apiTangleAddressByAddressBalanceGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**|  | 

### Return type

[**AddressWithBalances**](AddressWithBalances.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTangleAddressByAddressSendtxPost**
> PipelineStatus apiTangleAddressByAddressSendtxPost(address, message)

Send non-value transaction to the given IOTA address

Message to be broadcasted should be in the request body.              Message is split into several transactions if needed. Transactions may not be sent immediately. All requests are added to a pipeline which is being processed sequentially

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TangleApi();
var address = address_example; // String | 
var message = new String(); // String | 

try { 
    var result = api_instance.apiTangleAddressByAddressSendtxPost(address, message);
    print(result);
} catch (e) {
    print("Exception when calling TangleApi->apiTangleAddressByAddressSendtxPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**|  | 
 **message** | **String**|  | [optional] 

### Return type

[**PipelineStatus**](PipelineStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTangleAddressByAddressTransactionsDetailsGet**
> List<TransactionContainer> apiTangleAddressByAddressTransactionsDetailsGet(address, filter)

Transactions with all details by IOTA address

Transactions are sorted by timestamp in descending order

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TangleApi();
var address = address_example; // String | 
var filter = filter_example; // String | Filter criteria.<br />Default: ConfirmedOnly

try { 
    var result = api_instance.apiTangleAddressByAddressTransactionsDetailsGet(address, filter);
    print(result);
} catch (e) {
    print("Exception when calling TangleApi->apiTangleAddressByAddressTransactionsDetailsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**|  | 
 **filter** | **String**| Filter criteria.&lt;br /&gt;Default: ConfirmedOnly | [optional] 

### Return type

[**List<TransactionContainer>**](TransactionContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTangleAddressByAddressTransactionsGet**
> TransactionHashList apiTangleAddressByAddressTransactionsGet(address)

Transaction hashes by IOTA address

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TangleApi();
var address = address_example; // String | 

try { 
    var result = api_instance.apiTangleAddressByAddressTransactionsGet(address);
    print(result);
} catch (e) {
    print("Exception when calling TangleApi->apiTangleAddressByAddressTransactionsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**|  | 

### Return type

[**TransactionHashList**](TransactionHashList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTangleBundleByHashTransactionsDetailsGet**
> List<TransactionContainer> apiTangleBundleByHashTransactionsDetailsGet(hash, filter)

Transactions with all details by IOTA bundle

Transactions are sorted by timestamp in descending order

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TangleApi();
var hash = hash_example; // String | 
var filter = filter_example; // String | Filter criteria.<br />Default: ConfirmedOnly

try { 
    var result = api_instance.apiTangleBundleByHashTransactionsDetailsGet(hash, filter);
    print(result);
} catch (e) {
    print("Exception when calling TangleApi->apiTangleBundleByHashTransactionsDetailsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**|  | 
 **filter** | **String**| Filter criteria.&lt;br /&gt;Default: ConfirmedOnly | [optional] 

### Return type

[**List<TransactionContainer>**](TransactionContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTangleBundleByHashTransactionsGet**
> TransactionHashList apiTangleBundleByHashTransactionsGet(hash)

Transaction hashes by IOTA bundle

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TangleApi();
var hash = hash_example; // String | 

try { 
    var result = api_instance.apiTangleBundleByHashTransactionsGet(hash);
    print(result);
} catch (e) {
    print("Exception when calling TangleApi->apiTangleBundleByHashTransactionsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**|  | 

### Return type

[**TransactionHashList**](TransactionHashList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiTangleTransactionByHashGet**
> List<TransactionContainer> apiTangleTransactionByHashGet(hash)

Transaction details by transaction hash

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TangleApi();
var hash = hash_example; // String | 

try { 
    var result = api_instance.apiTangleTransactionByHashGet(hash);
    print(result);
} catch (e) {
    print("Exception when calling TangleApi->apiTangleTransactionByHashGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**|  | 

### Return type

[**List<TransactionContainer>**](TransactionContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

