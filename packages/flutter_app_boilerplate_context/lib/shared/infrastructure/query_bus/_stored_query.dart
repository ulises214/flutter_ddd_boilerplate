part of '_local_query_bus.dart';

class _StoredQuery {
  _StoredQuery(this.queryName, this.queryData, this.retryTimes);
  factory _StoredQuery.fromJson(Map<String, dynamic> json) {
    return _StoredQuery(
      json['queryName'] as String,
      json['queryData'] as Map<String, dynamic>,
      json['retryTimes'] as int,
    );
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'queryName': queryName,
      'queryData': queryData,
      'retryTimes': retryTimes
    };
  }

  String queryName;
  Map<String, dynamic> queryData;
  int retryTimes;
}
