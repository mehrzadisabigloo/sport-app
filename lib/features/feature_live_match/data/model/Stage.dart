class Stage {
  Stage({
    String? stageid,
    String? stagename,
    String? countrycode,
    String? badgeUrl,
    String? firstColor,
    String? countryid,
    String? countryname,
    String? countrynamecsnm,
    String? stagecode,
    num? iscup,
    String? competitionsds,
    num? stagehiddench,
    num? stagehidden,
    String? iso,}){
    _stageid = stageid;
    _stagename = stagename;
    _countrycode = countrycode;
    _badgeUrl = badgeUrl;
    _firstColor = firstColor;
    _countryid = countryid;
    _countryname = countryname;
    _countrynamecsnm = countrynamecsnm;
    _stagecode = stagecode;
    _iscup = iscup;
    _competitionsds = competitionsds;
    _stagehiddench = stagehiddench;
    _stagehidden = stagehidden;
    _iso = iso;
  }

  Stage.fromJson(dynamic json) {
    _stageid = json['STAGE_ID'];
    _stagename = json['STAGE_NAME'];
    _countrycode = json['COUNTRY_CODE'];
    _badgeUrl = json['badgeUrl'];
    _firstColor = json['firstColor'];
    _countryid = json['COUNTRY_ID'];
    _countryname = json['COUNTRY_NAME'];
    _countrynamecsnm = json['COUNTRY_NAME_CSNM'];
    _stagecode = json['STAGE_CODE'];
    _iscup = json['IS_CUP'];
    _competitionsds = json['COMPETITION_SDS'];
    _stagehiddench = json['STAGE_HIDDEN_CH'];
    _stagehidden = json['STAGE_HIDDEN'];
    _iso = json['ISO'];
  }
  String? _stageid;
  String? _stagename;
  String? _countrycode;
  String? _badgeUrl;
  String? _firstColor;
  String? _countryid;
  String? _countryname;
  String? _countrynamecsnm;
  String? _stagecode;
  num? _iscup;
  String? _competitionsds;
  num? _stagehiddench;
  num? _stagehidden;
  String? _iso;
  Stage copyWith({  String? stageid,
    String? stagename,
    String? countrycode,
    String? badgeUrl,
    String? firstColor,
    String? countryid,
    String? countryname,
    String? countrynamecsnm,
    String? stagecode,
    num? iscup,
    String? competitionsds,
    num? stagehiddench,
    num? stagehidden,
    String? iso,
  }) => Stage(  stageid: stageid ?? _stageid,
    stagename: stagename ?? _stagename,
    countrycode: countrycode ?? _countrycode,
    badgeUrl: badgeUrl ?? _badgeUrl,
    firstColor: firstColor ?? _firstColor,
    countryid: countryid ?? _countryid,
    countryname: countryname ?? _countryname,
    countrynamecsnm: countrynamecsnm ?? _countrynamecsnm,
    stagecode: stagecode ?? _stagecode,
    iscup: iscup ?? _iscup,
    competitionsds: competitionsds ?? _competitionsds,
    stagehiddench: stagehiddench ?? _stagehiddench,
    stagehidden: stagehidden ?? _stagehidden,
    iso: iso ?? _iso,
  );
  String? get stageid => _stageid;
  String? get stagename => _stagename;
  String? get countrycode => _countrycode;
  String? get badgeUrl => _badgeUrl;
  String? get firstColor => _firstColor;
  String? get countryid => _countryid;
  String? get countryname => _countryname;
  String? get countrynamecsnm => _countrynamecsnm;
  String? get stagecode => _stagecode;
  num? get iscup => _iscup;
  String? get competitionsds => _competitionsds;
  num? get stagehiddench => _stagehiddench;
  num? get stagehidden => _stagehidden;
  String? get iso => _iso;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['STAGE_ID'] = _stageid;
    map['STAGE_NAME'] = _stagename;
    map['COUNTRY_CODE'] = _countrycode;
    map['badgeUrl'] = _badgeUrl;
    map['firstColor'] = _firstColor;
    map['COUNTRY_ID'] = _countryid;
    map['COUNTRY_NAME'] = _countryname;
    map['COUNTRY_NAME_CSNM'] = _countrynamecsnm;
    map['STAGE_CODE'] = _stagecode;
    map['IS_CUP'] = _iscup;
    map['COMPETITION_SDS'] = _competitionsds;
    map['STAGE_HIDDEN_CH'] = _stagehiddench;
    map['STAGE_HIDDEN'] = _stagehidden;
    map['ISO'] = _iso;
    return map;
  }

}