class Photos {
  int _height;
  List<String> _htmlAttributions;
  String _photoReference;
  int _width;

  Photos(
      {int height,
      List<String> htmlAttributions,
      String photoReference,
      int width}) {
    this._height = height;
    this._htmlAttributions = htmlAttributions;
    this._photoReference = photoReference;
    this._width = width;
  }

  int get height => _height;
  set height(int height) => _height = height;
  List<String> get htmlAttributions => _htmlAttributions;
  set htmlAttributions(List<String> htmlAttributions) =>
      _htmlAttributions = htmlAttributions;
  String get photoReference => _photoReference;
  set photoReference(String photoReference) => _photoReference = photoReference;
  int get width => _width;
  set width(int width) => _width = width;

  Photos.fromJson(Map<String, dynamic> json) {
    _height = json['height'];
    _htmlAttributions = json['html_attributions'].cast<String>();
    _photoReference = json['photo_reference'];
    _width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this._height;
    data['html_attributions'] = this._htmlAttributions;
    data['photo_reference'] = this._photoReference;
    data['width'] = this._width;
    return data;
  }
}
