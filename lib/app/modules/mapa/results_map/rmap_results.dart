import 'rmap_geometry.dart';
import 'rmap_opnenig_hours.dart';
import 'rmap_photos.dart';
import 'rmap_plus_code.dart';

class Results {
  Geometry _geometry;
  String _icon;
  String _id;
  String _name;
  OpeningHours _openingHours;
  List<Photos> _photos;
  String _placeId;
  PlusCode _plusCode;
  double _rating;
  String _reference;
  String _scope;
  List<String> _types;
  int _userRatingsTotal;
  String _vicinity;
  int _priceLevel;

  Results(
      {Geometry geometry,
      String icon,
      String id,
      String name,
      OpeningHours openingHours,
      List<Photos> photos,
      String placeId,
      PlusCode plusCode,
      double rating,
      String reference,
      String scope,
      List<String> types,
      int userRatingsTotal,
      String vicinity,
      int priceLevel}) {
    this._geometry = geometry;
    this._icon = icon;
    this._id = id;
    this._name = name;
    this._openingHours = openingHours;
    this._photos = photos;
    this._placeId = placeId;
    this._plusCode = plusCode;
    this._rating = rating;
    this._reference = reference;
    this._scope = scope;
    this._types = types;
    this._userRatingsTotal = userRatingsTotal;
    this._vicinity = vicinity;
    this._priceLevel = priceLevel;
  }

  Geometry get geometry => _geometry;
  set geometry(Geometry geometry) => _geometry = geometry;
  String get icon => _icon;
  set icon(String icon) => _icon = icon;
  String get id => _id;
  set id(String id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  OpeningHours get openingHours => _openingHours;
  set openingHours(OpeningHours openingHours) => _openingHours = openingHours;
  List<Photos> get photos => _photos;
  set photos(List<Photos> photos) => _photos = photos;
  String get placeId => _placeId;
  set placeId(String placeId) => _placeId = placeId;
  PlusCode get plusCode => _plusCode;
  set plusCode(PlusCode plusCode) => _plusCode = plusCode;
  double get rating => _rating;
  set rating(double rating) => _rating = rating;
  String get reference => _reference;
  set reference(String reference) => _reference = reference;
  String get scope => _scope;
  set scope(String scope) => _scope = scope;
  List<String> get types => _types;
  set types(List<String> types) => _types = types;
  int get userRatingsTotal => _userRatingsTotal;
  set userRatingsTotal(int userRatingsTotal) =>
      _userRatingsTotal = userRatingsTotal;
  String get vicinity => _vicinity;
  set vicinity(String vicinity) => _vicinity = vicinity;
  int get priceLevel => _priceLevel;
  set priceLevel(int priceLevel) => _priceLevel = priceLevel;

  Results.fromJson(Map<String, dynamic> json) {
    _geometry = json['geometry'] != null
        ? new Geometry.fromJson(json['geometry'])
        : null;
    _icon = json['icon'];
    _id = json['id'];
    _name = json['name'];
    _openingHours = json['opening_hours'] != null
        ? new OpeningHours.fromJson(json['opening_hours'])
        : null;
    if (json['photos'] != null) {
      _photos = new List<Photos>();
      json['photos'].forEach((v) {
        _photos.add(new Photos.fromJson(v));
      });
    }
    _placeId = json['place_id'];
    _plusCode = json['plus_code'] != null
        ? new PlusCode.fromJson(json['plus_code'])
        : null;
    _rating =  double.tryParse(json['rating'].toString());
    _reference = json['reference'];
    _scope = json['scope'];
    _types = json['types'].cast<String>();
    _userRatingsTotal = json['user_ratings_total'];
    _vicinity = json['vicinity'];
    _priceLevel = json['price_level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._geometry != null) {
      data['geometry'] = this._geometry.toJson();
    }
    data['icon'] = this._icon;
    data['id'] = this._id;
    data['name'] = this._name;
    if (this._openingHours != null) {
      data['opening_hours'] = this._openingHours.toJson();
    }
    if (this._photos != null) {
      data['photos'] = this._photos.map((v) => v.toJson()).toList();
    }
    data['place_id'] = this._placeId;
    if (this._plusCode != null) {
      data['plus_code'] = this._plusCode.toJson();
    }
    data['rating'] = this._rating;
    data['reference'] = this._reference;
    data['scope'] = this._scope;
    data['types'] = this._types;
    data['user_ratings_total'] = this._userRatingsTotal;
    data['vicinity'] = this._vicinity;
    data['price_level'] = this._priceLevel;
    return data;
  }
}