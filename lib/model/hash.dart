part of swagger.api;

class Hash {
  
  int trytesLength = null;
  

  String value = null;
  
  Hash();

  @override
  String toString() {
    return 'Hash[trytesLength=$trytesLength, value=$value, ]';
  }

  Hash.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    trytesLength =
        json['trytesLength']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'trytesLength': trytesLength,
      'value': value
     };
  }

  static List<Hash> listFromJson(List<dynamic> json) {
    return json == null ? new List<Hash>() : json.map((value) => new Hash.fromJson(value)).toList();
  }

  static Map<String, Hash> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Hash>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Hash.fromJson(value));
    }
    return map;
  }
}

