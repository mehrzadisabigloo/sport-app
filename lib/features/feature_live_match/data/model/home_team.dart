class HomeTeam {
  HomeTeam({
    String? name,
    String? id,
    String? badgeid,
    String? badgesource,
    String? abbreviation,
    num? isvirtual,
    num? gender,
    String? countryname,
    String? countryid,
    bool? hasvideo,}){
    _name = name;
    _id = id;
    _badgeid = badgeid;
    _badgesource = badgesource;
    _abbreviation = abbreviation;
    _isvirtual = isvirtual;
    _gender = gender;
    _countryname = countryname;
    _countryid = countryid;
    _hasvideo = hasvideo;
  }

  HomeTeam.fromJson(dynamic json) {
    _name = json['NAME'];
    _id = json['ID'];
    _badgeid = json['BADGE_ID'];
    _badgesource = json['BADGE_SOURCE'];
    _abbreviation = json['ABBREVIATION'];
    _isvirtual = json['IS_VIRTUAL'];
    _gender = json['GENDER'];
    _countryname = json['COUNTRY_NAME'];
    _countryid = json['COUNTRY_ID'];
    _hasvideo = json['HAS_VIDEO'];
  }
  String? _name;
  String? _id;
  String? _badgeid;
  String? _badgesource;
  String? _abbreviation;
  num? _isvirtual;
  num? _gender;
  String? _countryname;
  String? _countryid;
  bool? _hasvideo;
  HomeTeam copyWith({  String? name,
    String? id,
    String? badgeid,
    String? badgesource,
    String? abbreviation,
    num? isvirtual,
    num? gender,
    String? countryname,
    String? countryid,
    bool? hasvideo,
  }) => HomeTeam(  name: name ?? _name,
    id: id ?? _id,
    badgeid: badgeid ?? _badgeid,
    badgesource: badgesource ?? _badgesource,
    abbreviation: abbreviation ?? _abbreviation,
    isvirtual: isvirtual ?? _isvirtual,
    gender: gender ?? _gender,
    countryname: countryname ?? _countryname,
    countryid: countryid ?? _countryid,
    hasvideo: hasvideo ?? _hasvideo,
  );
  String? get name => _name;
  String? get id => _id;
  String? get badgeid => _badgeid;
  String? get badgesource => _badgesource;
  String? get abbreviation => _abbreviation;
  num? get isvirtual => _isvirtual;
  num? get gender => _gender;
  String? get countryname => _countryname;
  String? get countryid => _countryid;
  bool? get hasvideo => _hasvideo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['NAME'] = _name;
    map['ID'] = _id;
    map['BADGE_ID'] = _badgeid;
    map['BADGE_SOURCE'] = _badgesource;
    map['ABBREVIATION'] = _abbreviation;
    map['IS_VIRTUAL'] = _isvirtual;
    map['GENDER'] = _gender;
    map['COUNTRY_NAME'] = _countryname;
    map['COUNTRY_ID'] = _countryid;
    map['HAS_VIDEO'] = _hasvideo;
    return map;
  }

}