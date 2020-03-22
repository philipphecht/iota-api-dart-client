part of swagger.api;

class Checksum {
  
  int trytesLength = null;
  

  String value = null;
  
  Checksum();

  @override
  String toString() {
    return 'Checksum[trytesLength=$trytesLength, value=$value, ]';
  }

  Checksum.fromJson(Map<String, dynamic> json) {
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

  static List<Checksum> listFromJson(List<dynamic> json) {
    return json == null ? new List<Checksum>() : json.map((value) => new Checksum.fromJson(value)).toList();
  }

  static Map<String, Checksum> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Checksum>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Checksum.fromJson(value));
    }
    return map;
  }
}

