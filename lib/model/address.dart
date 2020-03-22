part of swagger.api;

class Address {
  
  int balance = null;
  

  Checksum checksum = null;
  

  int keyIndex = null;
  

  AbstractPrivateKey privateKey = null;
  

  int securityLevel = null;
  

  bool spentFrom = null;
  

  int trytesLength = null;
  

  String value = null;
  
  Address();

  @override
  String toString() {
    return 'Address[balance=$balance, checksum=$checksum, keyIndex=$keyIndex, privateKey=$privateKey, securityLevel=$securityLevel, spentFrom=$spentFrom, trytesLength=$trytesLength, value=$value, ]';
  }

  Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    balance =
        json['balance']
    ;
    checksum =
      
      
      new Checksum.fromJson(json['checksum'])
;
    keyIndex =
        json['keyIndex']
    ;
    privateKey =
      
      
      new AbstractPrivateKey.fromJson(json['privateKey'])
;
    securityLevel =
        json['securityLevel']
    ;
    spentFrom =
        json['spentFrom']
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
      'balance': balance,
      'checksum': checksum,
      'keyIndex': keyIndex,
      'privateKey': privateKey,
      'securityLevel': securityLevel,
      'spentFrom': spentFrom,
      'trytesLength': trytesLength,
      'value': value
     };
  }

  static List<Address> listFromJson(List<dynamic> json) {
    return json == null ? new List<Address>() : json.map((value) => new Address.fromJson(value)).toList();
  }

  static Map<String, Address> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Address>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Address.fromJson(value));
    }
    return map;
  }
}

