part of swagger.api;

class AddressWithBalances {
  
  List<Address> addresses = [];
  

  int duration = null;
  

  int milestoneIndex = null;
  

  List<TryteString> references = [];
  
  AddressWithBalances();

  @override
  String toString() {
    return 'AddressWithBalances[addresses=$addresses, duration=$duration, milestoneIndex=$milestoneIndex, references=$references, ]';
  }

  AddressWithBalances.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    addresses =
      Address.listFromJson(json['addresses'])
;
    duration =
        json['duration']
    ;
    milestoneIndex =
        json['milestoneIndex']
    ;
    references =
      TryteString.listFromJson(json['references'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'addresses': addresses,
      'duration': duration,
      'milestoneIndex': milestoneIndex,
      'references': references
     };
  }

  static List<AddressWithBalances> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddressWithBalances>() : json.map((value) => new AddressWithBalances.fromJson(value)).toList();
  }

  static Map<String, AddressWithBalances> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddressWithBalances>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddressWithBalances.fromJson(value));
    }
    return map;
  }
}

