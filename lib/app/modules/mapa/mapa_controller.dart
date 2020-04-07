import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';
import 'MapsAPI.dart';

part 'mapa_controller.g.dart';

class MapaController = MapaControllerBase with _$MapaController;

abstract class MapaControllerBase with Store {
  LatLng _latLng = LatLng(-16.7254243, -43.8699252);
  GoogleMapController mapController;
  MapsAPI _mapsApi;

  MapaControllerBase(this._mapsApi);

  @observable
  Set<Marker> markers = Set<Marker>();
  @observable
  bool iconSearchVisibility = false;

  @action
  Future<void> searchNearbyHospitals() async {
    this.markers = (await _mapsApi.search(_latLng, 5000, 'hospital', 'health'))
        .results
        .map(
      (result) {
        var m = Marker(
          position: result.geometry.location.latLng,
          markerId: MarkerId(result.id),
          visible: true,
        );
        return m;
      },
    ).toSet();
    //.asObservable();
    // TODO: att classe pra icone
    //https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-16.7254243,-43.8699252&radius=1500&type=hospital&keyword=health&key=AIzaSyBx1yAantiLKIlUlCHWhyRr7b88DXk_j40
  }

  @action
  Future<LatLng> atualizarLocal() async {
    _latLng = await _mapsApi.actualLocation();
  }

  @computed
  LatLng get latLng => _latLng;

  void onMapCreated(GoogleMapController mapController) {
    this.mapController = mapController;
    iconSearchVisibility = true;
  }

  void onCameraMove(CameraPosition data) {}

  void onTap(LatLng data) {}
}
