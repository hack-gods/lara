import 'rmap_results.dart';

class MapSearchResult {
  List<dynamic> _htmlAttributions;
  List<Results> _results;
  String _status;

  MapSearchResult(
      {List<dynamic> htmlAttributions, List<Results> results, String status}) {
    this._htmlAttributions = htmlAttributions;
    this._results = results;
    this._status = status;
  }

  List<dynamic> get htmlAttributions => _htmlAttributions;
  set htmlAttributions(List<dynamic> htmlAttributions) => _htmlAttributions = htmlAttributions;
  List<Results> get results => _results;
  set results(List<Results> results) => _results = results;
  String get status => _status;
  set status(String status) => _status = status;

  MapSearchResult.fromJson(Map<String, dynamic> json) {
    if (json['html_attributions'] != null) {
      _htmlAttributions = new List<dynamic>();
      json['html_attributions'].forEach((v) {
        _htmlAttributions.add(v);
      });
    }
    if (json['results'] != null) {
      _results = new List<Results>();
      json['results'].forEach((v) {
        _results.add(new Results.fromJson(v));
      });
    }
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._htmlAttributions != null) {
      data['html_attributions'] = this._htmlAttributions;
    }
    if (this._results != null) {
      data['results'] = this._results.map((v) => v.toJson()).toList();
    }
    data['status'] = this._status;
    return data;
  }
}
