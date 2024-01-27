import '../../../feature_today_match/data/model/Today.dart';

class Events {
  Events({
    String? matchid,
    String? homescore,
    String? awayscore,
    String? homehalftimescore,
    String? awayhalftimescore,
    String? homefulltimescore,
    String? awayfulltimescore,
    List<HomeTeam>? hometeam,
    List<AwayTeam>? awayteam,
    String? matchstatus,
    num? matchstatusid,
    num? matchstatusoverall,
    num? matchcoverageid,
    num? ern,
    String? erninf,
    num? typeofmatch,
    String? matchstartdate,
    num? eact,
    num? matchinfoproperties,
    num? eox,
    num? incsX,
    num? comX,
    num? luX,
    num? statX,
    num? subsX,
    num? sDFowX,
    num? sDInnX,
    num? luC,
    num? matchishidden,
    num? sportid,
    Stage? stage,
    num? externalid,}){
    _matchid = matchid;
    _homescore = homescore;
    _awayscore = awayscore;
    _homehalftimescore = homehalftimescore;
    _awayhalftimescore = awayhalftimescore;
    _homefulltimescore = homefulltimescore;
    _awayfulltimescore = awayfulltimescore;
    _hometeam = hometeam;
    _awayteam = awayteam;
    _matchstatus = matchstatus;
    _matchstatusid = matchstatusid;
    _matchstatusoverall = matchstatusoverall;
    _matchcoverageid = matchcoverageid;
    _ern = ern;
    _erninf = erninf;
    _typeofmatch = typeofmatch;
    _matchstartdate = matchstartdate;
    _eact = eact;
    _matchinfoproperties = matchinfoproperties;
    _eox = eox;
    _incsX = incsX;
    _comX = comX;
    _luX = luX;
    _statX = statX;
    _subsX = subsX;
    _sDFowX = sDFowX;
    _sDInnX = sDInnX;
    _luC = luC;
    _matchishidden = matchishidden;
    _sportid = sportid;
    _stage = stage;
    _externalid = externalid;
  }

  Events.fromJson(dynamic json) {
    _matchid = json['MATCH_ID'];
    _homescore = json['HOME_SCORE'];
    _awayscore = json['AWAY_SCORE'];
    _homehalftimescore = json['HOME_HALF_TIME_SCORE'];
    _awayhalftimescore = json['AWAY_HALF_TIME_SCORE'];
    _homefulltimescore = json['HOME_FULL_TIME_SCORE'];
    _awayfulltimescore = json['AWAY_FULL_TIME_SCORE'];
    if (json['HOME_TEAM'] != null) {
      _hometeam = [];
      json['HOME_TEAM'].forEach((v) {
        _hometeam?.add(HomeTeam.fromJson(v));
      });
    }
    if (json['AWAY_TEAM'] != null) {
      _awayteam = [];
      json['AWAY_TEAM'].forEach((v) {
        _awayteam?.add(AwayTeam.fromJson(v));
      });
    }
    _matchstatus = json['MATCH_STATUS'];
    _matchstatusid = json['MATCH_STATUS_ID'];
    _matchstatusoverall = json['MATCH_STATUS_OVERALL'];
    _matchcoverageid = json['MATCH_COVERAGE_ID'];
    _ern = json['ERN'];
    _erninf = json['ERN_INF'];
    _typeofmatch = json['TYPE_OF_MATCH'];
    _matchstartdate = json['MATCH_START_DATE'];
    _eact = json['Eact'];
    _matchinfoproperties = json['MATCH_INFO_PROPERTIES'];
    _eox = json['EOX'];
    _incsX = json['IncsX'];
    _comX = json['ComX'];
    _luX = json['LuX'];
    _statX = json['StatX'];
    _subsX = json['SubsX'];
    _sDFowX = json['SDFowX'];
    _sDInnX = json['SDInnX'];
    _luC = json['LuC'];
    _matchishidden = json['MATCH_IS_HIDDEN'];
    _sportid = json['SPORT_ID'];
    _stage = json['STAGE'] != null ? Stage.fromJson(json['STAGE']) : null;
    _externalid = json['EXTERNAL_ID'];
  }
  String? _matchid;
  String? _homescore;
  String? _awayscore;
  String? _homehalftimescore;
  String? _awayhalftimescore;
  String? _homefulltimescore;
  String? _awayfulltimescore;
  List<HomeTeam>? _hometeam;
  List<AwayTeam>? _awayteam;
  String? _matchstatus;
  num? _matchstatusid;
  num? _matchstatusoverall;
  num? _matchcoverageid;
  num? _ern;
  String? _erninf;
  num? _typeofmatch;
  String? _matchstartdate;
  num? _eact;
  num? _matchinfoproperties;
  num? _eox;
  num? _incsX;
  num? _comX;
  num? _luX;
  num? _statX;
  num? _subsX;
  num? _sDFowX;
  num? _sDInnX;
  num? _luC;
  num? _matchishidden;
  num? _sportid;
  Stage? _stage;
  num? _externalid;
  Events copyWith({  String? matchid,
    String? homescore,
    String? awayscore,
    String? homehalftimescore,
    String? awayhalftimescore,
    String? homefulltimescore,
    String? awayfulltimescore,
    List<HomeTeam>? hometeam,
    List<AwayTeam>? awayteam,
    String? matchstatus,
    num? matchstatusid,
    num? matchstatusoverall,
    num? matchcoverageid,
    num? ern,
    String? erninf,
    num? typeofmatch,
    String? matchstartdate,
    num? eact,
    num? matchinfoproperties,
    num? eox,
    num? incsX,
    num? comX,
    num? luX,
    num? statX,
    num? subsX,
    num? sDFowX,
    num? sDInnX,
    num? luC,
    num? matchishidden,
    num? sportid,
    Stage? stage,
    num? externalid,
  }) => Events(  matchid: matchid ?? _matchid,
    homescore: homescore ?? _homescore,
    awayscore: awayscore ?? _awayscore,
    homehalftimescore: homehalftimescore ?? _homehalftimescore,
    awayhalftimescore: awayhalftimescore ?? _awayhalftimescore,
    homefulltimescore: homefulltimescore ?? _homefulltimescore,
    awayfulltimescore: awayfulltimescore ?? _awayfulltimescore,
    hometeam: hometeam ?? _hometeam,
    awayteam: awayteam ?? _awayteam,
    matchstatus: matchstatus ?? _matchstatus,
    matchstatusid: matchstatusid ?? _matchstatusid,
    matchstatusoverall: matchstatusoverall ?? _matchstatusoverall,
    matchcoverageid: matchcoverageid ?? _matchcoverageid,
    ern: ern ?? _ern,
    erninf: erninf ?? _erninf,
    typeofmatch: typeofmatch ?? _typeofmatch,
    matchstartdate: matchstartdate ?? _matchstartdate,
    eact: eact ?? _eact,
    matchinfoproperties: matchinfoproperties ?? _matchinfoproperties,
    eox: eox ?? _eox,
    incsX: incsX ?? _incsX,
    comX: comX ?? _comX,
    luX: luX ?? _luX,
    statX: statX ?? _statX,
    subsX: subsX ?? _subsX,
    sDFowX: sDFowX ?? _sDFowX,
    sDInnX: sDInnX ?? _sDInnX,
    luC: luC ?? _luC,
    matchishidden: matchishidden ?? _matchishidden,
    sportid: sportid ?? _sportid,
    stage: stage ?? _stage,
    externalid: externalid ?? _externalid,
  );
  String? get matchid => _matchid;

  String? get homescore => _homescore;
  String? get awayscore => _awayscore;
  String? get homehalftimescore => _homehalftimescore;
  String? get awayhalftimescore => _awayhalftimescore;
  String? get homefulltimescore => _homefulltimescore;
  String? get awayfulltimescore => _awayfulltimescore;
  List<HomeTeam>? get hometeam => _hometeam;
  List<AwayTeam>? get awayteam => _awayteam;
  String? get matchstatus => _matchstatus;
  num? get matchstatusid => _matchstatusid;
  num? get matchstatusoverall => _matchstatusoverall;
  num? get matchcoverageid => _matchcoverageid;
  num? get ern => _ern;
  String? get erninf => _erninf;
  num? get typeofmatch => _typeofmatch;
  String? get matchstartdate => _matchstartdate;
  num? get eact => _eact;
  num? get matchinfoproperties => _matchinfoproperties;
  num? get eox => _eox;
  num? get incsX => _incsX;
  num? get comX => _comX;
  num? get luX => _luX;
  num? get statX => _statX;
  num? get subsX => _subsX;
  num? get sDFowX => _sDFowX;
  num? get sDInnX => _sDInnX;
  num? get luC => _luC;
  num? get matchishidden => _matchishidden;
  num? get sportid => _sportid;
  Stage? get stage => _stage;
  num? get externalid => _externalid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['MATCH_ID'] = _matchid;
    map['HOME_SCORE'] = _homescore;
    map['AWAY_SCORE'] = _awayscore;
    map['HOME_HALF_TIME_SCORE'] = _homehalftimescore;
    map['AWAY_HALF_TIME_SCORE'] = _awayhalftimescore;
    map['HOME_FULL_TIME_SCORE'] = _homefulltimescore;
    map['AWAY_FULL_TIME_SCORE'] = _awayfulltimescore;
    if (_hometeam != null) {
      map['HOME_TEAM'] = _hometeam?.map((v) => v.toJson()).toList();
    }
    if (_awayteam != null) {
      map['AWAY_TEAM'] = _awayteam?.map((v) => v.toJson()).toList();
    }
    map['MATCH_STATUS'] = _matchstatus;
    map['MATCH_STATUS_ID'] = _matchstatusid;
    map['MATCH_STATUS_OVERALL'] = _matchstatusoverall;
    map['MATCH_COVERAGE_ID'] = _matchcoverageid;
    map['ERN'] = _ern;
    map['ERN_INF'] = _erninf;
    map['TYPE_OF_MATCH'] = _typeofmatch;
    map['MATCH_START_DATE'] = _matchstartdate;
    map['Eact'] = _eact;
    map['MATCH_INFO_PROPERTIES'] = _matchinfoproperties;
    map['EOX'] = _eox;
    map['IncsX'] = _incsX;
    map['ComX'] = _comX;
    map['LuX'] = _luX;
    map['StatX'] = _statX;
    map['SubsX'] = _subsX;
    map['SDFowX'] = _sDFowX;
    map['SDInnX'] = _sDInnX;
    map['LuC'] = _luC;
    map['MATCH_IS_HIDDEN'] = _matchishidden;
    map['SPORT_ID'] = _sportid;
    if (_stage != null) {
      map['STAGE'] = _stage?.toJson();
    }
    map['EXTERNAL_ID'] = _externalid;
    return map;
  }

}