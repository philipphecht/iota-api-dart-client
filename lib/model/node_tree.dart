part of swagger.api;

class NodeTree {
  
  String name = null;
  

  List<NodeTree> children = [];
  
  NodeTree();

  @override
  String toString() {
    return 'NodeTree[name=$name, children=$children, ]';
  }

  NodeTree.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    children =
      NodeTree.listFromJson(json['children'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'children': children
     };
  }

  static List<NodeTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<NodeTree>() : json.map((value) => new NodeTree.fromJson(value)).toList();
  }

  static Map<String, NodeTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NodeTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NodeTree.fromJson(value));
    }
    return map;
  }
}

