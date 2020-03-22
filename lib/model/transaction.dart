part of swagger.api;

class Transaction {
  
  Address address = null;
  

  int attachmentTimestamp = null;
  

  int attachmentTimestampLowerBound = null;
  

  int attachmentTimestampUpperBound = null;
  

  Hash branchTransaction = null;
  

  Hash bundleHash = null;
  

  int currentIndex = null;
  

  Fragment fragment = null;
  

  Hash hash = null;
  

  bool isTail = null;
  

  int lastIndex = null;
  

  Tag nonce = null;
  

  Tag obsoleteTag = null;
  

  Tag tag = null;
  

  int timestamp = null;
  

  Hash trunkTransaction = null;
  

  int value = null;
  
  Transaction();

  @override
  String toString() {
    return 'Transaction[address=$address, attachmentTimestamp=$attachmentTimestamp, attachmentTimestampLowerBound=$attachmentTimestampLowerBound, attachmentTimestampUpperBound=$attachmentTimestampUpperBound, branchTransaction=$branchTransaction, bundleHash=$bundleHash, currentIndex=$currentIndex, fragment=$fragment, hash=$hash, isTail=$isTail, lastIndex=$lastIndex, nonce=$nonce, obsoleteTag=$obsoleteTag, tag=$tag, timestamp=$timestamp, trunkTransaction=$trunkTransaction, value=$value, ]';
  }

  Transaction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address =
      
      
      new Address.fromJson(json['address'])
;
    attachmentTimestamp =
        json['attachmentTimestamp']
    ;
    attachmentTimestampLowerBound =
        json['attachmentTimestampLowerBound']
    ;
    attachmentTimestampUpperBound =
        json['attachmentTimestampUpperBound']
    ;
    branchTransaction =
      
      
      new Hash.fromJson(json['branchTransaction'])
;
    bundleHash =
      
      
      new Hash.fromJson(json['bundleHash'])
;
    currentIndex =
        json['currentIndex']
    ;
    fragment =
      
      
      new Fragment.fromJson(json['fragment'])
;
    hash =
      
      
      new Hash.fromJson(json['hash'])
;
    isTail =
        json['isTail']
    ;
    lastIndex =
        json['lastIndex']
    ;
    nonce =
      
      
      new Tag.fromJson(json['nonce'])
;
    obsoleteTag =
      
      
      new Tag.fromJson(json['obsoleteTag'])
;
    tag =
      
      
      new Tag.fromJson(json['tag'])
;
    timestamp =
        json['timestamp']
    ;
    trunkTransaction =
      
      
      new Hash.fromJson(json['trunkTransaction'])
;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'attachmentTimestamp': attachmentTimestamp,
      'attachmentTimestampLowerBound': attachmentTimestampLowerBound,
      'attachmentTimestampUpperBound': attachmentTimestampUpperBound,
      'branchTransaction': branchTransaction,
      'bundleHash': bundleHash,
      'currentIndex': currentIndex,
      'fragment': fragment,
      'hash': hash,
      'isTail': isTail,
      'lastIndex': lastIndex,
      'nonce': nonce,
      'obsoleteTag': obsoleteTag,
      'tag': tag,
      'timestamp': timestamp,
      'trunkTransaction': trunkTransaction,
      'value': value
     };
  }

  static List<Transaction> listFromJson(List<dynamic> json) {
    return json == null ? new List<Transaction>() : json.map((value) => new Transaction.fromJson(value)).toList();
  }

  static Map<String, Transaction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Transaction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Transaction.fromJson(value));
    }
    return map;
  }
}

