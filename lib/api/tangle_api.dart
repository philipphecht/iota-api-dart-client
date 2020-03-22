part of swagger.api;



class TangleApi {
  final ApiClient apiClient;

  TangleApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Confirmed balance by IOTA address
  ///
  /// It is based on the latest confirmed milestone
  Future<AddressWithBalances> apiTangleAddressByAddressBalanceGet(String address) async {
    Object postBody = null;

    // verify required params are set
    if(address == null) {
     throw new ApiException(400, "Missing required param: address");
    }

    // create path and map variables
    String path = "/api/Tangle/address/{address}/balance".replaceAll("{format}","json").replaceAll("{" + "address" + "}", address.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'AddressWithBalances') as AddressWithBalances ;
    } else {
      return null;
    }
  }
  /// Send non-value transaction to the given IOTA address
  ///
  /// Message to be broadcasted should be in the request body.              Message is split into several transactions if needed. Transactions may not be sent immediately. All requests are added to a pipeline which is being processed sequentially
  Future<PipelineStatus> apiTangleAddressByAddressSendtxPost(String address, { String message }) async {
    Object postBody = message;

    // verify required params are set
    if(address == null) {
     throw new ApiException(400, "Missing required param: address");
    }

    // create path and map variables
    String path = "/api/Tangle/address/{address}/sendtx".replaceAll("{format}","json").replaceAll("{" + "address" + "}", address.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json","application/json","text/json","application/_*+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PipelineStatus') as PipelineStatus ;
    } else {
      return null;
    }
  }
  /// Transactions with all details by IOTA address
  ///
  /// Transactions are sorted by timestamp in descending order
  Future<List<TransactionContainer>> apiTangleAddressByAddressTransactionsDetailsGet(String address, { String filter }) async {
    Object postBody = null;

    // verify required params are set
    if(address == null) {
     throw new ApiException(400, "Missing required param: address");
    }

    // create path and map variables
    String path = "/api/Tangle/address/{address}/transactions/details".replaceAll("{format}","json").replaceAll("{" + "address" + "}", address.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter", filter));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<TransactionContainer>') as List).map((item) => item as TransactionContainer).toList();
    } else {
      return null;
    }
  }
  /// Transaction hashes by IOTA address
  ///
  /// 
  Future<TransactionHashList> apiTangleAddressByAddressTransactionsGet(String address) async {
    Object postBody = null;

    // verify required params are set
    if(address == null) {
     throw new ApiException(400, "Missing required param: address");
    }

    // create path and map variables
    String path = "/api/Tangle/address/{address}/transactions".replaceAll("{format}","json").replaceAll("{" + "address" + "}", address.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'TransactionHashList') as TransactionHashList ;
    } else {
      return null;
    }
  }
  /// Transactions with all details by IOTA bundle
  ///
  /// Transactions are sorted by timestamp in descending order
  Future<List<TransactionContainer>> apiTangleBundleByHashTransactionsDetailsGet(String hash, { String filter }) async {
    Object postBody = null;

    // verify required params are set
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/api/Tangle/bundle/{hash}/transactions/details".replaceAll("{format}","json").replaceAll("{" + "hash" + "}", hash.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter", filter));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<TransactionContainer>') as List).map((item) => item as TransactionContainer).toList();
    } else {
      return null;
    }
  }
  /// Transaction hashes by IOTA bundle
  ///
  /// 
  Future<TransactionHashList> apiTangleBundleByHashTransactionsGet(String hash) async {
    Object postBody = null;

    // verify required params are set
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/api/Tangle/bundle/{hash}/transactions".replaceAll("{format}","json").replaceAll("{" + "hash" + "}", hash.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'TransactionHashList') as TransactionHashList ;
    } else {
      return null;
    }
  }
  /// Transaction details by transaction hash
  ///
  /// 
  Future<List<TransactionContainer>> apiTangleTransactionByHashGet(String hash) async {
    Object postBody = null;

    // verify required params are set
    if(hash == null) {
     throw new ApiException(400, "Missing required param: hash");
    }

    // create path and map variables
    String path = "/api/Tangle/transaction/{hash}".replaceAll("{format}","json").replaceAll("{" + "hash" + "}", hash.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<TransactionContainer>') as List).map((item) => item as TransactionContainer).toList();
    } else {
      return null;
    }
  }
}
