import 'package:sportapp/features/feature_head_to_head/domain/entities/head_to_head_entity3.dart';

/// DATA : {"MATCH_ID":"1071881","H2H_EVENTS_KEY":[{"MATCH_ID":"1071879","HOME_TEAM":[{"NAME":"Young Boys","ID":"3677","BADGE_ID":"10192","BADGE_SOURCE":"https://lsm-static-prod.livescore.com/high/enet/10192.png","NEWS_TAG":"/team/bsc-young-boys-2021020913320920836-486/","ABBREVIATION":"YOU","IS_VIRTUAL":0,"GENDER":1,"MATCH_IDS":{"1":["10192"],"6":["2445"],"8":["3677"],"12":["SBTP_2599"],"28":["13898"],"30":["3d5b8078-62b0-4252-9191-761452b68adf"],"32":["486"]},"COUNTRY_NAME":"Switzerland","COUNTRY_ID":"SUI","HAS_VIDEO":false}],"AWAY_TEAM":[{"NAME":"Manchester City","ID":"12633","BADGE_ID":"8456","BADGE_SOURCE":"https://lsm-static-prod.livescore.com/high/enet/8456.png","NEWS_TAG":"/team/manchester-city-2021020913320920836-104/","ABBREVIATION":"MCI","IS_VIRTUAL":0,"GENDER":1,"MATCH_IDS":{"1":["8456"],"6":["17"],"8":["12633"],"12":["SBTP_240"],"15":["12"],"28":["6803"],"30":["d3f1d6b8-4a0a-426c-ae18-5a9a3f9a61f3"],"32":["104"]},"COUNTRY_NAME":"England","COUNTRY_ID":"ENG","HAS_VIDEO":true}],"HOME_SCORE":"1","AWAY_SCORE":"3","STAGE":{"STAGE_ID":"15543","STAGE_NAME":"Group G","COUNTRY_CODE":"group-g","badgeUrl":"2023-champions-league.png","firstColor":"152E58","COUNTRY_ID":"130","COUNTRY_NAME":"Champions League","COUNTRY_NAME_CSNM":"Champions League","STAGE_CODE":"champions-league","COMPETITION_ID":"60","COMPETITION_NAME":"Champions League","COMPETITION_DESCRIPTION":"UEFA","IS_CUP":0,"COMPETITION_SDS":"Group G","STAGE_HIDDEN_CH":0,"STAGE_HIDDEN":0,"ISO":"NON"},"MATCH_STATUS_ID":6,"MATCH_STATUS":"FT","MATCH_STATUS_OVERALL":2,"WHICH_TEAM_WON":2,"MATCH_START_DATE":20231025190000}]}

class HeadToHead extends HeadToHeadEntity {
  const HeadToHead(
      {
    Data? data,}
      ) :super(
    data: data
  );


  factory HeadToHead.fromJson(dynamic json) {
    return HeadToHead(
      data: json['DATA'] != null ? Data.fromJson(json['DATA']) : null
    );
  }

}

/// MATCH_ID : "1071881"
/// H2H_EVENTS_KEY : [{"MATCH_ID":"1071879","HOME_TEAM":[{"NAME":"Young Boys","ID":"3677","BADGE_ID":"10192","BADGE_SOURCE":"https://lsm-static-prod.livescore.com/high/enet/10192.png","NEWS_TAG":"/team/bsc-young-boys-2021020913320920836-486/","ABBREVIATION":"YOU","IS_VIRTUAL":0,"GENDER":1,"MATCH_IDS":{"1":["10192"],"6":["2445"],"8":["3677"],"12":["SBTP_2599"],"28":["13898"],"30":["3d5b8078-62b0-4252-9191-761452b68adf"],"32":["486"]},"COUNTRY_NAME":"Switzerland","COUNTRY_ID":"SUI","HAS_VIDEO":false}],"AWAY_TEAM":[{"NAME":"Manchester City","ID":"12633","BADGE_ID":"8456","BADGE_SOURCE":"https://lsm-static-prod.livescore.com/high/enet/8456.png","NEWS_TAG":"/team/manchester-city-2021020913320920836-104/","ABBREVIATION":"MCI","IS_VIRTUAL":0,"GENDER":1,"MATCH_IDS":{"1":["8456"],"6":["17"],"8":["12633"],"12":["SBTP_240"],"15":["12"],"28":["6803"],"30":["d3f1d6b8-4a0a-426c-ae18-5a9a3f9a61f3"],"32":["104"]},"COUNTRY_NAME":"England","COUNTRY_ID":"ENG","HAS_VIDEO":true}],"HOME_SCORE":"1","AWAY_SCORE":"3","STAGE":{"STAGE_ID":"15543","STAGE_NAME":"Group G","COUNTRY_CODE":"group-g","badgeUrl":"2023-champions-league.png","firstColor":"152E58","COUNTRY_ID":"130","COUNTRY_NAME":"Champions League","COUNTRY_NAME_CSNM":"Champions League","STAGE_CODE":"champions-league","COMPETITION_ID":"60","COMPETITION_NAME":"Champions League","COMPETITION_DESCRIPTION":"UEFA","IS_CUP":0,"COMPETITION_SDS":"Group G","STAGE_HIDDEN_CH":0,"STAGE_HIDDEN":0,"ISO":"NON"},"MATCH_STATUS_ID":6,"MATCH_STATUS":"FT","MATCH_STATUS_OVERALL":2,"WHICH_TEAM_WON":2,"MATCH_START_DATE":20231025190000}]

class Data {
  Data({
      String? matchid,
      List<H2hEventsKey>? h2heventskey,}){
    _matchid = matchid;
    _h2heventskey = h2heventskey;
}

  Data.fromJson(dynamic json) {
    _matchid = json['MATCH_ID'];
    if (json['H2H_EVENTS_KEY'] != null) {
      _h2heventskey = [];
      json['H2H_EVENTS_KEY'].forEach((v) {
        _h2heventskey?.add(H2hEventsKey.fromJson(v));
      });
    }
  }
  String? _matchid;
  List<H2hEventsKey>? _h2heventskey;
Data copyWith({  String? matchid,
  List<H2hEventsKey>? h2heventskey,
}) => Data(  matchid: matchid ?? _matchid,
  h2heventskey: h2heventskey ?? _h2heventskey,
);
  String? get matchid => _matchid;
  List<H2hEventsKey>? get h2heventskey => _h2heventskey;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['MATCH_ID'] = _matchid;
    if (_h2heventskey != null) {
      map['H2H_EVENTS_KEY'] = _h2heventskey?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// MATCH_ID : "1071879"
/// HOME_TEAM : [{"NAME":"Young Boys","ID":"3677","BADGE_ID":"10192","BADGE_SOURCE":"https://lsm-static-prod.livescore.com/high/enet/10192.png","NEWS_TAG":"/team/bsc-young-boys-2021020913320920836-486/","ABBREVIATION":"YOU","IS_VIRTUAL":0,"GENDER":1,"MATCH_IDS":{"1":["10192"],"6":["2445"],"8":["3677"],"12":["SBTP_2599"],"28":["13898"],"30":["3d5b8078-62b0-4252-9191-761452b68adf"],"32":["486"]},"COUNTRY_NAME":"Switzerland","COUNTRY_ID":"SUI","HAS_VIDEO":false}]
/// AWAY_TEAM : [{"NAME":"Manchester City","ID":"12633","BADGE_ID":"8456","BADGE_SOURCE":"https://lsm-static-prod.livescore.com/high/enet/8456.png","NEWS_TAG":"/team/manchester-city-2021020913320920836-104/","ABBREVIATION":"MCI","IS_VIRTUAL":0,"GENDER":1,"MATCH_IDS":{"1":["8456"],"6":["17"],"8":["12633"],"12":["SBTP_240"],"15":["12"],"28":["6803"],"30":["d3f1d6b8-4a0a-426c-ae18-5a9a3f9a61f3"],"32":["104"]},"COUNTRY_NAME":"England","COUNTRY_ID":"ENG","HAS_VIDEO":true}]
/// HOME_SCORE : "1"
/// AWAY_SCORE : "3"
/// STAGE : {"STAGE_ID":"15543","STAGE_NAME":"Group G","COUNTRY_CODE":"group-g","badgeUrl":"2023-champions-league.png","firstColor":"152E58","COUNTRY_ID":"130","COUNTRY_NAME":"Champions League","COUNTRY_NAME_CSNM":"Champions League","STAGE_CODE":"champions-league","COMPETITION_ID":"60","COMPETITION_NAME":"Champions League","COMPETITION_DESCRIPTION":"UEFA","IS_CUP":0,"COMPETITION_SDS":"Group G","STAGE_HIDDEN_CH":0,"STAGE_HIDDEN":0,"ISO":"NON"}
/// MATCH_STATUS_ID : 6
/// MATCH_STATUS : "FT"
/// MATCH_STATUS_OVERALL : 2
/// WHICH_TEAM_WON : 2
/// MATCH_START_DATE : 20231025190000

class H2hEventsKey {
  H2hEventsKey({
      String? matchid, 
      List<HomeTeam>? hometeam, 
      List<AwayTeam>? awayteam, 
      String? homescore, 
      String? awayscore, 
      Stage? stage, 
      num? matchstatusid, 
      String? matchstatus, 
      num? matchstatusoverall, 
      num? whichteamwon, 
      num? matchstartdate,}){
    _matchid = matchid;
    _hometeam = hometeam;
    _awayteam = awayteam;
    _homescore = homescore;
    _awayscore = awayscore;
    _stage = stage;
    _matchstatusid = matchstatusid;
    _matchstatus = matchstatus;
    _matchstatusoverall = matchstatusoverall;
    _whichteamwon = whichteamwon;
    _matchstartdate = matchstartdate;
}

  H2hEventsKey.fromJson(dynamic json) {
    _matchid = json['MATCH_ID'];
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
    _homescore = json['HOME_SCORE'];
    _awayscore = json['AWAY_SCORE'];
    _stage = json['STAGE'] != null ? Stage.fromJson(json['STAGE']) : null;
    _matchstatusid = json['MATCH_STATUS_ID'];
    _matchstatus = json['MATCH_STATUS'];
    _matchstatusoverall = json['MATCH_STATUS_OVERALL'];
    _whichteamwon = json['WHICH_TEAM_WON'];
    _matchstartdate = json['MATCH_START_DATE'];
  }
  String? _matchid;
  List<HomeTeam>? _hometeam;
  List<AwayTeam>? _awayteam;
  String? _homescore;
  String? _awayscore;
  Stage? _stage;
  num? _matchstatusid;
  String? _matchstatus;
  num? _matchstatusoverall;
  num? _whichteamwon;
  num? _matchstartdate;
H2hEventsKey copyWith({  String? matchid,
  List<HomeTeam>? hometeam,
  List<AwayTeam>? awayteam,
  String? homescore,
  String? awayscore,
  Stage? stage,
  num? matchstatusid,
  String? matchstatus,
  num? matchstatusoverall,
  num? whichteamwon,
  num? matchstartdate,
}) => H2hEventsKey(  matchid: matchid ?? _matchid,
  hometeam: hometeam ?? _hometeam,
  awayteam: awayteam ?? _awayteam,
  homescore: homescore ?? _homescore,
  awayscore: awayscore ?? _awayscore,
  stage: stage ?? _stage,
  matchstatusid: matchstatusid ?? _matchstatusid,
  matchstatus: matchstatus ?? _matchstatus,
  matchstatusoverall: matchstatusoverall ?? _matchstatusoverall,
  whichteamwon: whichteamwon ?? _whichteamwon,
  matchstartdate: matchstartdate ?? _matchstartdate,
);
  String? get matchid => _matchid;
  List<HomeTeam>? get hometeam => _hometeam;
  List<AwayTeam>? get awayteam => _awayteam;
  String? get homescore => _homescore;
  String? get awayscore => _awayscore;
  Stage? get stage => _stage;
  num? get matchstatusid => _matchstatusid;
  String? get matchstatus => _matchstatus;
  num? get matchstatusoverall => _matchstatusoverall;
  num? get whichteamwon => _whichteamwon;
  num? get matchstartdate => _matchstartdate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['MATCH_ID'] = _matchid;
    if (_hometeam != null) {
      map['HOME_TEAM'] = _hometeam?.map((v) => v.toJson()).toList();
    }
    if (_awayteam != null) {
      map['AWAY_TEAM'] = _awayteam?.map((v) => v.toJson()).toList();
    }
    map['HOME_SCORE'] = _homescore;
    map['AWAY_SCORE'] = _awayscore;
    if (_stage != null) {
      map['STAGE'] = _stage?.toJson();
    }
    map['MATCH_STATUS_ID'] = _matchstatusid;
    map['MATCH_STATUS'] = _matchstatus;
    map['MATCH_STATUS_OVERALL'] = _matchstatusoverall;
    map['WHICH_TEAM_WON'] = _whichteamwon;
    map['MATCH_START_DATE'] = _matchstartdate;
    return map;
  }

}

/// STAGE_ID : "15543"
/// STAGE_NAME : "Group G"
/// COUNTRY_CODE : "group-g"
/// badgeUrl : "2023-champions-league.png"
/// firstColor : "152E58"
/// COUNTRY_ID : "130"
/// COUNTRY_NAME : "Champions League"
/// COUNTRY_NAME_CSNM : "Champions League"
/// STAGE_CODE : "champions-league"
/// COMPETITION_ID : "60"
/// COMPETITION_NAME : "Champions League"
/// COMPETITION_DESCRIPTION : "UEFA"
/// IS_CUP : 0
/// COMPETITION_SDS : "Group G"
/// STAGE_HIDDEN_CH : 0
/// STAGE_HIDDEN : 0
/// ISO : "NON"

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
      String? competitionid, 
      String? competitionname, 
      String? competitiondescription, 
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
    _competitionid = competitionid;
    _competitionname = competitionname;
    _competitiondescription = competitiondescription;
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
    _competitionid = json['COMPETITION_ID'];
    _competitionname = json['COMPETITION_NAME'];
    _competitiondescription = json['COMPETITION_DESCRIPTION'];
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
  String? _competitionid;
  String? _competitionname;
  String? _competitiondescription;
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
  String? competitionid,
  String? competitionname,
  String? competitiondescription,
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
  competitionid: competitionid ?? _competitionid,
  competitionname: competitionname ?? _competitionname,
  competitiondescription: competitiondescription ?? _competitiondescription,
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
  String? get competitionid => _competitionid;
  String? get competitionname => _competitionname;
  String? get competitiondescription => _competitiondescription;
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
    map['COMPETITION_ID'] = _competitionid;
    map['COMPETITION_NAME'] = _competitionname;
    map['COMPETITION_DESCRIPTION'] = _competitiondescription;
    map['IS_CUP'] = _iscup;
    map['COMPETITION_SDS'] = _competitionsds;
    map['STAGE_HIDDEN_CH'] = _stagehiddench;
    map['STAGE_HIDDEN'] = _stagehidden;
    map['ISO'] = _iso;
    return map;
  }

}

/// NAME : "Manchester City"
/// ID : "12633"
/// BADGE_ID : "8456"
/// BADGE_SOURCE : "https://lsm-static-prod.livescore.com/high/enet/8456.png"
/// NEWS_TAG : "/team/manchester-city-2021020913320920836-104/"
/// ABBREVIATION : "MCI"
/// IS_VIRTUAL : 0
/// GENDER : 1
/// MATCH_IDS : {"1":["8456"],"6":["17"],"8":["12633"],"12":["SBTP_240"],"15":["12"],"28":["6803"],"30":["d3f1d6b8-4a0a-426c-ae18-5a9a3f9a61f3"],"32":["104"]}
/// COUNTRY_NAME : "England"
/// COUNTRY_ID : "ENG"
/// HAS_VIDEO : true

class AwayTeam {
  AwayTeam({
      String? name, 
      String? id, 
      String? badgeid, 
      String? badgesource, 
      String? newstag, 
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
    _newstag = newstag;
    _abbreviation = abbreviation;
    _isvirtual = isvirtual;
    _gender = gender;
    _countryname = countryname;
    _countryid = countryid;
    _hasvideo = hasvideo;
}

  AwayTeam.fromJson(dynamic json) {
    _name = json['NAME'];
    _id = json['ID'];
    _badgeid = json['BADGE_ID'];
    _badgesource = json['BADGE_SOURCE'];
    _newstag = json['NEWS_TAG'];
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
  String? _newstag;
  String? _abbreviation;
  num? _isvirtual;
  num? _gender;
  String? _countryname;
  String? _countryid;
  bool? _hasvideo;
AwayTeam copyWith({  String? name,
  String? id,
  String? badgeid,
  String? badgesource,
  String? newstag,
  String? abbreviation,
  num? isvirtual,
  num? gender,
  String? countryname,
  String? countryid,
  bool? hasvideo,
}) => AwayTeam(  name: name ?? _name,
  id: id ?? _id,
  badgeid: badgeid ?? _badgeid,
  badgesource: badgesource ?? _badgesource,
  newstag: newstag ?? _newstag,
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
  String? get newstag => _newstag;
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
    map['NEWS_TAG'] = _newstag;
    map['ABBREVIATION'] = _abbreviation;
    map['IS_VIRTUAL'] = _isvirtual;
    map['GENDER'] = _gender;
    map['COUNTRY_NAME'] = _countryname;
    map['COUNTRY_ID'] = _countryid;
    map['HAS_VIDEO'] = _hasvideo;
    return map;
  }

}


/// NAME : "Young Boys"
/// ID : "3677"
/// BADGE_ID : "10192"
/// BADGE_SOURCE : "https://lsm-static-prod.livescore.com/high/enet/10192.png"
/// NEWS_TAG : "/team/bsc-young-boys-2021020913320920836-486/"
/// ABBREVIATION : "YOU"
/// IS_VIRTUAL : 0
/// GENDER : 1
/// MATCH_IDS : {"1":["10192"],"6":["2445"],"8":["3677"],"12":["SBTP_2599"],"28":["13898"],"30":["3d5b8078-62b0-4252-9191-761452b68adf"],"32":["486"]}
/// COUNTRY_NAME : "Switzerland"
/// COUNTRY_ID : "SUI"
/// HAS_VIDEO : false

class HomeTeam {
  HomeTeam({
      String? name, 
      String? id, 
      String? badgeid, 
      String? badgesource, 
      String? newstag, 
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
    _newstag = newstag;
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
    _newstag = json['NEWS_TAG'];
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
  String? _newstag;
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
  String? newstag,
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
  newstag: newstag ?? _newstag,
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
  String? get newstag => _newstag;
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
    map['NEWS_TAG'] = _newstag;
    map['ABBREVIATION'] = _abbreviation;
    map['IS_VIRTUAL'] = _isvirtual;
    map['GENDER'] = _gender;
    map['COUNTRY_NAME'] = _countryname;
    map['COUNTRY_ID'] = _countryid;
    map['HAS_VIDEO'] = _hasvideo;
    return map;
  }

}

