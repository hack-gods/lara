import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'results_map/map_search_result.dart';

class MapsAPI {
  static const String _googleApiKey = 'MAPS_API_KEY';
  static const String _baseUrl = 'https://maps.googleapis.com';
  final _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<MapSearchResult> search(
    LatLng latLng,
    int radius,
    String type,
    String keyword,
  ) async {
    var response = await _dio.get(
      '/maps/api/place/nearbysearch/json',
      queryParameters: {
        'location': '${latLng.latitude},${latLng.longitude}',
        'radius': '$radius',
        'type': type,
        'keyword': keyword,
        'key': _googleApiKey
      },
    );
    print('response.data:${response.data}');
    return MapSearchResult.fromJson(response.data);
  }

  Future<LatLng> actualLocation() async {
      return LatLng(-16.751000, -43.879809);
  }
}
