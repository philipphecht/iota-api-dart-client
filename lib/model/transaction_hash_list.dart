part of swagger.api;

class TransactionHashList {
  
  List<Hash> hashes = [];
  
  TransactionHashList();

  @override
  String toString() {
    return 'TransactionHashList[hashes=$hashes, ]';
  }

  TransactionHashList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hashes =
      Hash.listFromJson(json['hashes'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'hashes': hashes
     };
  }

  static List<TransactionHashList> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransactionHashList>() : json.map((value) => new TransactionHashList.fromJson(value)).toList();
  }

  static Map<String, TransactionHashList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransactionHashList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransactionHashList.fromJson(value));
    }
    return map;
  }
}

