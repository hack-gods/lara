import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'mapa_controller.dart';

class MapaPage extends StatefulWidget {
  final String title;

  MapaPage({Key key, this.title = "Mapa"}) : super(key: key);

  @override
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends ModularState<MapaPage, MapaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(child: Observer(builder: (_) {
        print('build map');
        return map;
      })),
    );
  }

  Widget get appBar {
    return AppBar(title: Text('mapa'), actions: <Widget>[
      Observer(
        builder: (_) => Visibility(
          child: IconButton(
            icon: Icon(Icons.map),
            onPressed: controller.searchNearbyHospitals,
          ),
          visible: controller.iconSearchVisibility,
        ),
      ),
    ]);
  }

  Widget get map {
    return GoogleMap(
      onCameraMove: controller.onCameraMove,
      onTap: controller.onTap,
      initialCameraPosition: CameraPosition(
        target: controller.latLng,
        zoom: 13.0,
      ),
      markers: controller.markers,
      onMapCreated: controller.onMapCreated,
    );
  }
}
