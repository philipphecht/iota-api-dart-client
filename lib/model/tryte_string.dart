part of swagger.api;

class TryteString {
  
  int trytesLength = null;
  

  String value = null;
  
  TryteString();

  @override
  String toString() {
    return 'TryteString[trytesLength=$trytesLength, value=$value, ]';
  }

  TryteString.fromJson(Map<String, dynamic> json) {
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

  static List<TryteString> listFromJson(List<dynamic> json) {
    return json == null ? new List<TryteString>() : json.map((value) => new TryteString.fromJson(value)).toList();
  }

  static Map<String, TryteString> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TryteString>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TryteString.fromJson(value));
    }
    return map;
  }
}

