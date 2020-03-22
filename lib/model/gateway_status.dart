part of swagger.api;

class GatewayStatus {
  
  String status = null;
  //enum statusEnum {  OK,  Failed,  };

  String version = null;
  
  GatewayStatus();

  @override
  String toString() {
    return 'GatewayStatus[status=$status, version=$version, ]';
  }

  GatewayStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status =
        json['status']
    ;
    version =
        json['version']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'version': version
     };
  }

  static List<GatewayStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<GatewayStatus>() : json.map((value) => new GatewayStatus.fromJson(value)).toList();
  }

  static Map<String, GatewayStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GatewayStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GatewayStatus.fromJson(value));
    }
    return map;
  }
}

