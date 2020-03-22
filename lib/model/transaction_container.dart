part of swagger.api;

class TransactionContainer {
  
  Transaction transaction = null;
  

  bool isConfirmed = null;
  

  String decodedMessage = null;
  

  int timestamp = null;
  

  String transactionType = null;
  //enum transactionTypeEnum {  ValueTransaction,  NonValueTransaction,  };
  TransactionContainer();

  @override
  String toString() {
    return 'TransactionContainer[transaction=$transaction, isConfirmed=$isConfirmed, decodedMessage=$decodedMessage, timestamp=$timestamp, transactionType=$transactionType, ]';
  }

  TransactionContainer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    transaction =
      
      
      new Transaction.fromJson(json['transaction'])
;
    isConfirmed =
        json['isConfirmed']
    ;
    decodedMessage =
        json['decodedMessage']
    ;
    timestamp =
        json['timestamp']
    ;
    transactionType =
        json['transactionType']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'transaction': transaction,
      'isConfirmed': isConfirmed,
      'decodedMessage': decodedMessage,
      'timestamp': timestamp,
      'transactionType': transactionType
     };
  }

  static List<TransactionContainer> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransactionContainer>() : json.map((value) => new TransactionContainer.fromJson(value)).toList();
  }

  static Map<String, TransactionContainer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransactionContainer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransactionContainer.fromJson(value));
    }
    return map;
  }
}

