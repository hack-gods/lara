import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location {
  double _lat;
  double _lng;

  Location({double lat, double lng}) {
    this._lat = lat;
    this._lng = lng;
  }

  
  set lat(double lat) => _lat = lat;
  set lng(double lng) => _lng = lng;
  double get lat => _lat;
  double get lng => _lng;
  LatLng get latLng => LatLng(_lat, _lng);
  

  Location.fromJson(Map<String, dynamic> json) {
    _lat = json['lat'];
    _lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this._lat;
    data['lng'] = this._lng;
    return data;
  }
}