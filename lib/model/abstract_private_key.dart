part of swagger.api;

class AbstractPrivateKey {
  
  Digest digest = null;
  

  int trytesLength = null;
  

  String value = null;
  
  AbstractPrivateKey();

  @override
  String toString() {
    return 'AbstractPrivateKey[digest=$digest, trytesLength=$trytesLength, value=$value, ]';
  }

  AbstractPrivateKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    digest =
      
      
      new Digest.fromJson(json['digest'])
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
      'digest': digest,
      'trytesLength': trytesLength,
      'value': value
     };
  }

  static List<AbstractPrivateKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<AbstractPrivateKey>() : json.map((value) => new AbstractPrivateKey.fromJson(value)).toList();
  }

  static Map<String, AbstractPrivateKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AbstractPrivateKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AbstractPrivateKey.fromJson(value));
    }
    return map;
  }
}

