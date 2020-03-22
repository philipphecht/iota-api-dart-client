part of swagger.api;

class Fragment {
  
  bool isEmpty = null;
  

  int trytesLength = null;
  

  String value = null;
  
  Fragment();

  @override
  String toString() {
    return 'Fragment[isEmpty=$isEmpty, trytesLength=$trytesLength, value=$value, ]';
  }

  Fragment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isEmpty =
        json['isEmpty']
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
      'isEmpty': isEmpty,
      'trytesLength': trytesLength,
      'value': value
     };
  }

  static List<Fragment> listFromJson(List<dynamic> json) {
    return json == null ? new List<Fragment>() : json.map((value) => new Fragment.fromJson(value)).toList();
  }

  static Map<String, Fragment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Fragment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Fragment.fromJson(value));
    }
    return map;
  }
}

