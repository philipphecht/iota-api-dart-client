part of swagger.api;

class PipelineStatus {
  
  String status = null;
  //enum statusEnum {  TaskWasAddedToPipeline,  TooManyRequests,  };

  String globalId = null;
  

  int numberOfRequests = null;
  
  PipelineStatus();

  @override
  String toString() {
    return 'PipelineStatus[status=$status, globalId=$globalId, numberOfRequests=$numberOfRequests, ]';
  }

  PipelineStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status =
        json['status']
    ;
    globalId =
        json['globalId']
    ;
    numberOfRequests =
        json['numberOfRequests']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'globalId': globalId,
      'numberOfRequests': numberOfRequests
     };
  }

  static List<PipelineStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<PipelineStatus>() : json.map((value) => new PipelineStatus.fromJson(value)).toList();
  }

  static Map<String, PipelineStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PipelineStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PipelineStatus.fromJson(value));
    }
    return map;
  }
}

