part of swagger.api;

class Tag {
  
  int trytesLength = null;
  

  String value = null;
  
  Tag();

  @override
  String toString() {
    return 'Tag[trytesLength=$trytesLength, value=$value, ]';
  }

  Tag.fromJson(Map<String, dynamic> json) {
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

  static List<Tag> listFromJson(List<dynamic> json) {
    return json == null ? new List<Tag>() : json.map((value) => new Tag.fromJson(value)).toList();
  }

  static Map<String, Tag> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Tag>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Tag.fromJson(value));
    }
    return map;
  }
}

