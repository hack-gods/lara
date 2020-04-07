// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapa_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapaController on MapaControllerBase, Store {
  Computed<LatLng> _$latLngComputed;

  @override
  LatLng get latLng =>
      (_$latLngComputed ??= Computed<LatLng>(() => super.latLng)).value;

  final _$markersAtom = Atom(name: 'MapaControllerBase.markers');

  @override
  Set<Marker> get markers {
    _$markersAtom.context.enforceReadPolicy(_$markersAtom);
    _$markersAtom.reportObserved();
    return super.markers;
  }

  @override
  set markers(Set<Marker> value) {
    _$markersAtom.context.conditionallyRunInAction(() {
      super.markers = value;
      _$markersAtom.reportChanged();
    }, _$markersAtom, name: '${_$markersAtom.name}_set');
  }

  final _$iconSearchVisibilityAtom =
      Atom(name: 'MapaControllerBase.iconSearchVisibility');

  @override
  bool get iconSearchVisibility {
    _$iconSearchVisibilityAtom.context
        .enforceReadPolicy(_$iconSearchVisibilityAtom);
    _$iconSearchVisibilityAtom.reportObserved();
    return super.iconSearchVisibility;
  }

  @override
  set iconSearchVisibility(bool value) {
    _$iconSearchVisibilityAtom.context.conditionallyRunInAction(() {
      super.iconSearchVisibility = value;
      _$iconSearchVisibilityAtom.reportChanged();
    }, _$iconSearchVisibilityAtom,
        name: '${_$iconSearchVisibilityAtom.name}_set');
  }

  final _$searchNearbyHospitalsAsyncAction =
      AsyncAction('searchNearbyHospitals');

  @override
  Future<void> searchNearbyHospitals() {
    return _$searchNearbyHospitalsAsyncAction
        .run(() => super.searchNearbyHospitals());
  }

  final _$atualizarLocalAsyncAction = AsyncAction('atualizarLocal');

  @override
  Future<LatLng> atualizarLocal() {
    return _$atualizarLocalAsyncAction.run(() => super.atualizarLocal());
  }

  @override
  String toString() {
    final string =
        'markers: ${markers.toString()},iconSearchVisibility: ${iconSearchVisibility.toString()},latLng: ${latLng.toString()}';
    return '{$string}';
  }
}
