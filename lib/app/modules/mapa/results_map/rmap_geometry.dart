import 'rmap_location.dart';
import 'rmap_viewport.dart';

class Geometry {
  Location _location;
  Viewport _viewport;

  Geometry({Location location, Viewport viewport}) {
    this._location = location;
    this._viewport = viewport;
  }

  Location get location => _location;
  set location(Location location) => _location = location;
  Viewport get viewport => _viewport;
  set viewport(Viewport viewport) => _viewport = viewport;

  Geometry.fromJson(Map<String, dynamic> json) {
    _location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    _viewport = json['viewport'] != null
        ? new Viewport.fromJson(json['viewport'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._location != null) {
      data['location'] = this._location.toJson();
    }
    if (this._viewport != null) {
      data['viewport'] = this._viewport.toJson();
    }
    return data;
  }
}