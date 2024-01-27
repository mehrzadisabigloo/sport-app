class Team {
  Team({
    num? rank,
    String? teamid,
    num? winsint,
    String? winsstring,
    num? wininregulartime,
    num? winnerafterpenalties,
    num? pf,
    num? pa,
    num? winnerafterovertime,
    String? teamname,
    num? losesint,
    String? losesstring,
    num? lostinregulartime,
    num? lostafterovertime,
    num? lostafterpenalties,
    num? drawsint,
    String? drawsstring,
    num? goalfor,
    num? goalagainst,
    num? goaldifference,
    String? pointsstring,
    List<num>? allstagephases,
    num? inprogress,
    String? badgeid,
    String? badgesource,
    num? pointsint,
    num? teamplayed,}){
    _rank = rank;
    _teamid = teamid;
    _winsint = winsint;
    _winsstring = winsstring;
    _wininregulartime = wininregulartime;
    _winnerafterpenalties = winnerafterpenalties;
    _pf = pf;
    _pa = pa;
    _winnerafterovertime = winnerafterovertime;
    _teamname = teamname;
    _losesint = losesint;
    _losesstring = losesstring;
    _lostinregulartime = lostinregulartime;
    _lostafterovertime = lostafterovertime;
    _lostafterpenalties = lostafterpenalties;
    _drawsint = drawsint;
    _drawsstring = drawsstring;
    _goalfor = goalfor;
    _goalagainst = goalagainst;
    _goaldifference = goaldifference;
    _pointsstring = pointsstring;
    _allstagephases = allstagephases;
    _inprogress = inprogress;
    _badgeid = badgeid;
    _badgesource = badgesource;
    _pointsint = pointsint;
    _teamplayed = teamplayed;
  }

  Team.fromJson(dynamic json) {
    _rank = json['RANK'];
    _teamid = json['TEAM_ID'];
    _winsint = json['WINS_INT'];
    _winsstring = json['WINS_STRING'];
    _wininregulartime = json['WIN_IN_REGULAR_TIME'];
    _winnerafterpenalties = json['WINNER_AFTER_PENALTIES'];
    _pf = json['pf'];
    _pa = json['pa'];
    _winnerafterovertime = json['WINNER_AFTER_OVERTIME'];
    _teamname = json['TEAM_NAME'];
    _losesint = json['LOSES_INT'];
    _losesstring = json['LOSES_STRING'];
    _lostinregulartime = json['LOST_IN_REGULAR_TIME'];
    _lostafterovertime = json['LOST_AFTER_OVERTIME'];
    _lostafterpenalties = json['LOST_AFTER_PENALTIES'];
    _drawsint = json['DRAWS_INT'];
    _drawsstring = json['DRAWS_STRING'];
    _goalfor = json['GOAL_FOR'];
    _goalagainst = json['GOAL_AGAINST'];
    _goaldifference = json['GOAL_DIFFERENCE'];
    _pointsstring = json['POINTS_STRING'];
    _allstagephases = json['ALL_STAGE_PHASES'] != null ? json['ALL_STAGE_PHASES'].cast<num>() : [];
    _inprogress = json['IN_PROGRESS'];
    _badgeid = json['BADGE_ID'];
    _badgesource = json['BADGE_SOURCE'];
    _pointsint = json['POINTS_INT'];
    _teamplayed = json['TEAM_PLAYED'];
  }
  num? _rank;
  String? _teamid;
  num? _winsint;
  String? _winsstring;
  num? _wininregulartime;
  num? _winnerafterpenalties;
  num? _pf;
  num? _pa;
  num? _winnerafterovertime;
  String? _teamname;
  num? _losesint;
  String? _losesstring;
  num? _lostinregulartime;
  num? _lostafterovertime;
  num? _lostafterpenalties;
  num? _drawsint;
  String? _drawsstring;
  num? _goalfor;
  num? _goalagainst;
  num? _goaldifference;
  String? _pointsstring;
  List<num>? _allstagephases;
  num? _inprogress;
  String? _badgeid;
  String? _badgesource;
  num? _pointsint;
  num? _teamplayed;
  Team copyWith({  num? rank,
    String? teamid,
    num? winsint,
    String? winsstring,
    num? wininregulartime,
    num? winnerafterpenalties,
    num? pf,
    num? pa,
    num? winnerafterovertime,
    String? teamname,
    num? losesint,
    String? losesstring,
    num? lostinregulartime,
    num? lostafterovertime,
    num? lostafterpenalties,
    num? drawsint,
    String? drawsstring,
    num? goalfor,
    num? goalagainst,
    num? goaldifference,
    String? pointsstring,
    List<num>? allstagephases,
    num? inprogress,
    String? badgeid,
    String? badgesource,
    num? pointsint,
    num? teamplayed,
  }) => Team(  rank: rank ?? _rank,
    teamid: teamid ?? _teamid,
    winsint: winsint ?? _winsint,
    winsstring: winsstring ?? _winsstring,
    wininregulartime: wininregulartime ?? _wininregulartime,
    winnerafterpenalties: winnerafterpenalties ?? _winnerafterpenalties,
    pf: pf ?? _pf,
    pa: pa ?? _pa,
    winnerafterovertime: winnerafterovertime ?? _winnerafterovertime,
    teamname: teamname ?? _teamname,
    losesint: losesint ?? _losesint,
    losesstring: losesstring ?? _losesstring,
    lostinregulartime: lostinregulartime ?? _lostinregulartime,
    lostafterovertime: lostafterovertime ?? _lostafterovertime,
    lostafterpenalties: lostafterpenalties ?? _lostafterpenalties,
    drawsint: drawsint ?? _drawsint,
    drawsstring: drawsstring ?? _drawsstring,
    goalfor: goalfor ?? _goalfor,
    goalagainst: goalagainst ?? _goalagainst,
    goaldifference: goaldifference ?? _goaldifference,
    pointsstring: pointsstring ?? _pointsstring,
    allstagephases: allstagephases ?? _allstagephases,
    inprogress: inprogress ?? _inprogress,
    badgeid: badgeid ?? _badgeid,
    badgesource: badgesource ?? _badgesource,
    pointsint: pointsint ?? _pointsint,
    teamplayed: teamplayed ?? _teamplayed,
  );
  num? get rank => _rank;
  String? get teamid => _teamid;
  num? get winsint => _winsint;
  String? get winsstring => _winsstring;
  num? get wininregulartime => _wininregulartime;
  num? get winnerafterpenalties => _winnerafterpenalties;
  num? get pf => _pf;
  num? get pa => _pa;
  num? get winnerafterovertime => _winnerafterovertime;
  String? get teamname => _teamname;
  num? get losesint => _losesint;
  String? get losesstring => _losesstring;
  num? get lostinregulartime => _lostinregulartime;
  num? get lostafterovertime => _lostafterovertime;
  num? get lostafterpenalties => _lostafterpenalties;
  num? get drawsint => _drawsint;
  String? get drawsstring => _drawsstring;
  num? get goalfor => _goalfor;
  num? get goalagainst => _goalagainst;
  num? get goaldifference => _goaldifference;
  String? get pointsstring => _pointsstring;
  List<num>? get allstagephases => _allstagephases;
  num? get inprogress => _inprogress;
  String? get badgeid => _badgeid;
  String? get badgesource => _badgesource;
  num? get pointsint => _pointsint;
  num? get teamplayed => _teamplayed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['RANK'] = _rank;
    map['TEAM_ID'] = _teamid;
    map['WINS_INT'] = _winsint;
    map['WINS_STRING'] = _winsstring;
    map['WIN_IN_REGULAR_TIME'] = _wininregulartime;
    map['WINNER_AFTER_PENALTIES'] = _winnerafterpenalties;
    map['pf'] = _pf;
    map['pa'] = _pa;
    map['WINNER_AFTER_OVERTIME'] = _winnerafterovertime;
    map['TEAM_NAME'] = _teamname;
    map['LOSES_INT'] = _losesint;
    map['LOSES_STRING'] = _losesstring;
    map['LOST_IN_REGULAR_TIME'] = _lostinregulartime;
    map['LOST_AFTER_OVERTIME'] = _lostafterovertime;
    map['LOST_AFTER_PENALTIES'] = _lostafterpenalties;
    map['DRAWS_INT'] = _drawsint;
    map['DRAWS_STRING'] = _drawsstring;
    map['GOAL_FOR'] = _goalfor;
    map['GOAL_AGAINST'] = _goalagainst;
    map['GOAL_DIFFERENCE'] = _goaldifference;
    map['POINTS_STRING'] = _pointsstring;
    map['ALL_STAGE_PHASES'] = _allstagephases;
    map['IN_PROGRESS'] = _inprogress;
    map['BADGE_ID'] = _badgeid;
    map['BADGE_SOURCE'] = _badgesource;
    map['POINTS_INT'] = _pointsint;
    map['TEAM_PLAYED'] = _teamplayed;
    return map;
  }

}