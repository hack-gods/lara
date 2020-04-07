class OpeningHours {
  bool _openNow;

  OpeningHours({bool openNow}) {
    this._openNow = openNow;
  }

  bool get openNow => _openNow;
  set openNow(bool openNow) => _openNow = openNow;

  OpeningHours.fromJson(Map<String, dynamic> json) {
    _openNow = json['open_now'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['open_now'] = this._openNow;
    return data;
  }
}