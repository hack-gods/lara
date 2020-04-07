class PlusCode {
  String _compoundCode;
  String _globalCode;

  PlusCode({String compoundCode, String globalCode}) {
    this._compoundCode = compoundCode;
    this._globalCode = globalCode;
  }

  String get compoundCode => _compoundCode;
  set compoundCode(String compoundCode) => _compoundCode = compoundCode;
  String get globalCode => _globalCode;
  set globalCode(String globalCode) => _globalCode = globalCode;

  PlusCode.fromJson(Map<String, dynamic> json) {
    _compoundCode = json['compound_code'];
    _globalCode = json['global_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['compound_code'] = this._compoundCode;
    data['global_code'] = this._globalCode;
    return data;
  }
}