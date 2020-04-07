import 'rmap_location.dart';

class Viewport {
  Location _northeast;
  Location _southwest;

  Viewport({Location northeast, Location southwest}) {
    this._northeast = northeast;
    this._southwest = southwest;
  }

  Location get northeast => _northeast;
  set northeast(Location northeast) => _northeast = northeast;
  Location get southwest => _southwest;
  set southwest(Location southwest) => _southwest = southwest;

  Viewport.fromJson(Map<String, dynamic> json) {
    _northeast = json['northeast'] != null
        ? new Location.fromJson(json['northeast'])
        : null;
    _southwest = json['southwest'] != null
        ? new Location.fromJson(json['southwest'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._northeast != null) {
      data['northeast'] = this._northeast.toJson();
    }
    if (this._southwest != null) {
      data['southwest'] = this._southwest.toJson();
    }
    return data;
  }
}