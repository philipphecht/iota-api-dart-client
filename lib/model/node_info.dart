part of swagger.api;

class NodeInfo {
  
  String appName = null;
  

  String appVersion = null;
  

  int duration = null;
  

  int jreAvailableProcessors = null;
  

  int jreFreeMemory = null;
  

  int jreMaxMemory = null;
  

  int jreTotalMemory = null;
  

  String latestMilestone = null;
  

  int latestMilestoneIndex = null;
  

  String latestSolidSubtangleMilestone = null;
  

  int latestSolidSubtangleMilestoneIndex = null;
  

  int neighbors = null;
  

  int packetsQueueSize = null;
  

  int time = null;
  

  int tips = null;
  

  int transactionsToRequest = null;
  
  NodeInfo();

  @override
  String toString() {
    return 'NodeInfo[appName=$appName, appVersion=$appVersion, duration=$duration, jreAvailableProcessors=$jreAvailableProcessors, jreFreeMemory=$jreFreeMemory, jreMaxMemory=$jreMaxMemory, jreTotalMemory=$jreTotalMemory, latestMilestone=$latestMilestone, latestMilestoneIndex=$latestMilestoneIndex, latestSolidSubtangleMilestone=$latestSolidSubtangleMilestone, latestSolidSubtangleMilestoneIndex=$latestSolidSubtangleMilestoneIndex, neighbors=$neighbors, packetsQueueSize=$packetsQueueSize, time=$time, tips=$tips, transactionsToRequest=$transactionsToRequest, ]';
  }

  NodeInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    appName =
        json['appName']
    ;
    appVersion =
        json['appVersion']
    ;
    duration =
        json['duration']
    ;
    jreAvailableProcessors =
        json['jreAvailableProcessors']
    ;
    jreFreeMemory =
        json['jreFreeMemory']
    ;
    jreMaxMemory =
        json['jreMaxMemory']
    ;
    jreTotalMemory =
        json['jreTotalMemory']
    ;
    latestMilestone =
        json['latestMilestone']
    ;
    latestMilestoneIndex =
        json['latestMilestoneIndex']
    ;
    latestSolidSubtangleMilestone =
        json['latestSolidSubtangleMilestone']
    ;
    latestSolidSubtangleMilestoneIndex =
        json['latestSolidSubtangleMilestoneIndex']
    ;
    neighbors =
        json['neighbors']
    ;
    packetsQueueSize =
        json['packetsQueueSize']
    ;
    time =
        json['time']
    ;
    tips =
        json['tips']
    ;
    transactionsToRequest =
        json['transactionsToRequest']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'appName': appName,
      'appVersion': appVersion,
      'duration': duration,
      'jreAvailableProcessors': jreAvailableProcessors,
      'jreFreeMemory': jreFreeMemory,
      'jreMaxMemory': jreMaxMemory,
      'jreTotalMemory': jreTotalMemory,
      'latestMilestone': latestMilestone,
      'latestMilestoneIndex': latestMilestoneIndex,
      'latestSolidSubtangleMilestone': latestSolidSubtangleMilestone,
      'latestSolidSubtangleMilestoneIndex': latestSolidSubtangleMilestoneIndex,
      'neighbors': neighbors,
      'packetsQueueSize': packetsQueueSize,
      'time': time,
      'tips': tips,
      'transactionsToRequest': transactionsToRequest
     };
  }

  static List<NodeInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<NodeInfo>() : json.map((value) => new NodeInfo.fromJson(value)).toList();
  }

  static Map<String, NodeInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NodeInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NodeInfo.fromJson(value));
    }
    return map;
  }
}

