part of swagger.api;



class NodeApi {
  final ApiClient apiClient;

  NodeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Milestone index based on the pool of IOTA nodes the given gateway partners with
  ///
  /// The milestone index is based on the index that is gotten during the health check procedure which is performed independently every 2 minutes
  Future<int> apiNodeGetLatestMilestoneIndexGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Node/GetLatestMilestoneIndex".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// Basic summary of an IOTA node and its status
  ///
  /// Please note, the gateway usually partners with several IOTA load balancers/IOTA nodes and so the results differ based on the actual node that was selected for the particular API call
  Future<NodeInfo> apiNodeGetNodeInfoGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Node/GetNodeInfo".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'NodeInfo') as NodeInfo ;
    } else {
      return null;
    }
  }
}
