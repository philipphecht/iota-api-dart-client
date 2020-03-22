part of swagger.api;

class Digest {
  
  int keyIndex = null;
  

  int securityLevel = null;
  

  int trytesLength = null;
  

  String value = null;
  
  Digest();

  @override
  String toString() {
    return 'Digest[keyIndex=$keyIndex, securityLevel=$securityLevel, trytesLength=$trytesLength, value=$value, ]';
  }

  Digest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    keyIndex =
        json['keyIndex']
    ;
    securityLevel =
        json['securityLevel']
    ;
    trytesLength =
        json['trytesLength']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'keyIndex': keyIndex,
      'securityLevel': securityLevel,
      'trytesLength': trytesLength,
      'value': value
     };
  }

  static List<Digest> listFromJson(List<dynamic> json) {
    return json == null ? new List<Digest>() : json.map((value) => new Digest.fromJson(value)).toList();
  }

  static Map<String, Digest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Digest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Digest.fromJson(value));
    }
    return map;
  }
}

