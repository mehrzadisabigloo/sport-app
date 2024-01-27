import 'package:sportapp/features/feature_featured_games/domain/entities/featured_entity.dart';

/// event : {"tournament":{"name":"Saudi Professional League","slug":"saudi-professional-league","category":{"name":"Saudi Arabia","slug":"saudi-arabia","sport":{"name":"Football","slug":"football","id":1},"id":310,"flag":"saudi-arabia","alpha2":"SA"},"uniqueTournament":{"name":"Saudi Professional League","slug":"saudi-professional-league","primaryColorHex":"#0d1539","secondaryColorHex":"#61ab34","category":{"name":"Saudi Arabia","slug":"saudi-arabia","sport":{"name":"Football","slug":"football","id":1},"id":310,"flag":"saudi-arabia","alpha2":"SA"},"userCount":169007,"id":955,"country":{},"hasEventPlayerStatistics":true,"crowdsourcingEnabled":false,"hasPerformanceGraphFeature":true,"displayInverseHomeAwayTeams":false},"priority":148,"id":3708},"roundInfo":{"round":15},"customId":"VMisatj","status":{"code":31,"description":"Halftime","type":"inprogress"},"homeTeam":{"name":"Al-Hilal","slug":"al-hilal","shortName":"Al-Hilal","gender":"M","sport":{"name":"Football","slug":"football","id":1},"userCount":223968,"nameCode":"HIL","disabled":false,"national":false,"type":0,"id":21895,"country":{"alpha2":"SA","name":"Saudi Arabia"},"subTeams":[],"teamColors":{"primary":"#0080ff","secondary":"#0080ff","text":"#0080ff"}},"awayTeam":{"name":"Al-Nassr","slug":"al-nassr","shortName":"Al-Nassr","gender":"M","sport":{"name":"Football","slug":"football","id":1},"userCount":609284,"nameCode":"ALN","disabled":false,"national":false,"type":0,"id":23400,"country":{"alpha2":"SA","name":"Saudi Arabia"},"subTeams":[],"teamColors":{"primary":"#ffff00","secondary":"#ffff00","text":"#ffff00"}},"homeScore":{"current":0,"display":0,"period1":0,"normaltime":0},"awayScore":{"current":0,"display":0,"period1":0,"normaltime":0},"time":{"injuryTime1":4,"currentPeriodStartTimestamp":1701453768},"changes":{"changes":["status.code","status.description"],"changeTimestamp":1701456740},"hasGlobalHighlights":false,"hasEventPlayerStatistics":true,"hasEventPlayerHeatMap":true,"detailId":1,"crowdsourcingDataDisplayEnabled":false,"id":11453100,"crowdsourcingEnabled":false,"startTimestamp":1701453600,"slug":"al-nassr-al-hilal","finalResultOnly":false,"isEditor":false}
/// type : 3
/// action : 5
/// actionValue : "11453100"
/// reason : "topEvent"
/// createdBy : 2
/// reasonSuborder : 0
/// visible : true
/// dismissible : false
/// id : 159204

class PopularMatches extends FeaturedEntity {
  const PopularMatches({
    Event? event,
      num? type,
      num? action, 
      String? actionValue, 
      String? reason, 
      num? createdBy, 
      num? reasonSuborder, 
      bool? visible, 
      bool? dismissible, 
      num? id,}) : super(
    event: event,
    type: type,
    action: action,
    actionValue: actionValue,
    reason: reason,
    createdBy: createdBy,
    reasonSuborder: reasonSuborder,
    visible: visible,
    dismissible: dismissible,
    id: id
  );

  factory PopularMatches.fromJson(dynamic json) {
    return PopularMatches(
      event: json['event'] != null ? Event.fromJson(json['event']) : null,
      type: json['type'],
      action: json['action'],
      actionValue: json['actionValue'],
      reason: json['reason'],
      createdBy: json['createdBy'],
      reasonSuborder: json['reasonSuborder'],
      visible: json['visible'],
      dismissible: json['dismissible'],
      id: json['id']
    );
  }


}

/// tournament : {"name":"Saudi Professional League","slug":"saudi-professional-league","category":{"name":"Saudi Arabia","slug":"saudi-arabia","sport":{"name":"Football","slug":"football","id":1},"id":310,"flag":"saudi-arabia","alpha2":"SA"},"uniqueTournament":{"name":"Saudi Professional League","slug":"saudi-professional-league","primaryColorHex":"#0d1539","secondaryColorHex":"#61ab34","category":{"name":"Saudi Arabia","slug":"saudi-arabia","sport":{"name":"Football","slug":"football","id":1},"id":310,"flag":"saudi-arabia","alpha2":"SA"},"userCount":169007,"id":955,"country":{},"hasEventPlayerStatistics":true,"crowdsourcingEnabled":false,"hasPerformanceGraphFeature":true,"displayInverseHomeAwayTeams":false},"priority":148,"id":3708}
/// roundInfo : {"round":15}
/// customId : "VMisatj"
/// status : {"code":31,"description":"Halftime","type":"inprogress"}
/// homeTeam : {"name":"Al-Hilal","slug":"al-hilal","shortName":"Al-Hilal","gender":"M","sport":{"name":"Football","slug":"football","id":1},"userCount":223968,"nameCode":"HIL","disabled":false,"national":false,"type":0,"id":21895,"country":{"alpha2":"SA","name":"Saudi Arabia"},"subTeams":[],"teamColors":{"primary":"#0080ff","secondary":"#0080ff","text":"#0080ff"}}
/// awayTeam : {"name":"Al-Nassr","slug":"al-nassr","shortName":"Al-Nassr","gender":"M","sport":{"name":"Football","slug":"football","id":1},"userCount":609284,"nameCode":"ALN","disabled":false,"national":false,"type":0,"id":23400,"country":{"alpha2":"SA","name":"Saudi Arabia"},"subTeams":[],"teamColors":{"primary":"#ffff00","secondary":"#ffff00","text":"#ffff00"}}
/// homeScore : {"current":0,"display":0,"period1":0,"normaltime":0}
/// awayScore : {"current":0,"display":0,"period1":0,"normaltime":0}
/// time : {"injuryTime1":4,"currentPeriodStartTimestamp":1701453768}
/// changes : {"changes":["status.code","status.description"],"changeTimestamp":1701456740}
/// hasGlobalHighlights : false
/// hasEventPlayerStatistics : true
/// hasEventPlayerHeatMap : true
/// detailId : 1
/// crowdsourcingDataDisplayEnabled : false
/// id : 11453100
/// crowdsourcingEnabled : false
/// startTimestamp : 1701453600
/// slug : "al-nassr-al-hilal"
/// finalResultOnly : false
/// isEditor : false

class Event {
  Event({
      Tournament? tournament, 
      RoundInfo? roundInfo, 
      String? customId, 
      Status? status, 
      HomeTeam? homeTeam, 
      AwayTeam? awayTeam, 
      HomeScore? homeScore, 
      AwayScore? awayScore, 
      Time? time, 
      Changes? changes, 
      bool? hasGlobalHighlights, 
      bool? hasEventPlayerStatistics, 
      bool? hasEventPlayerHeatMap, 
      num? detailId, 
      bool? crowdsourcingDataDisplayEnabled, 
      num? id, 
      bool? crowdsourcingEnabled, 
      num? startTimestamp, 
      String? slug, 
      bool? finalResultOnly, 
      bool? isEditor,}){
    _tournament = tournament;
    _roundInfo = roundInfo;
    _customId = customId;
    _status = status;
    _homeTeam = homeTeam;
    _awayTeam = awayTeam;
    _homeScore = homeScore;
    _awayScore = awayScore;
    _time = time;
    _changes = changes;
    _hasGlobalHighlights = hasGlobalHighlights;
    _hasEventPlayerStatistics = hasEventPlayerStatistics;
    _hasEventPlayerHeatMap = hasEventPlayerHeatMap;
    _detailId = detailId;
    _crowdsourcingDataDisplayEnabled = crowdsourcingDataDisplayEnabled;
    _id = id;
    _crowdsourcingEnabled = crowdsourcingEnabled;
    _startTimestamp = startTimestamp;
    _slug = slug;
    _finalResultOnly = finalResultOnly;
    _isEditor = isEditor;
}

  Event.fromJson(dynamic json) {
    _tournament = json['tournament'] != null ? Tournament.fromJson(json['tournament']) : null;
    _roundInfo = json['roundInfo'] != null ? RoundInfo.fromJson(json['roundInfo']) : null;
    _customId = json['customId'];
    _status = json['status'] != null ? Status.fromJson(json['status']) : null;
    _homeTeam = json['homeTeam'] != null ? HomeTeam.fromJson(json['homeTeam']) : null;
    _awayTeam = json['awayTeam'] != null ? AwayTeam.fromJson(json['awayTeam']) : null;
    _homeScore = json['homeScore'] != null ? HomeScore.fromJson(json['homeScore']) : null;
    _awayScore = json['awayScore'] != null ? AwayScore.fromJson(json['awayScore']) : null;
    _time = json['time'] != null ? Time.fromJson(json['time']) : null;
    _changes = json['changes'] != null ? Changes.fromJson(json['changes']) : null;
    _hasGlobalHighlights = json['hasGlobalHighlights'];
    _hasEventPlayerStatistics = json['hasEventPlayerStatistics'];
    _hasEventPlayerHeatMap = json['hasEventPlayerHeatMap'];
    _detailId = json['detailId'];
    _crowdsourcingDataDisplayEnabled = json['crowdsourcingDataDisplayEnabled'];
    _id = json['id'];
    _crowdsourcingEnabled = json['crowdsourcingEnabled'];
    _startTimestamp = json['startTimestamp'];
    _slug = json['slug'];
    _finalResultOnly = json['finalResultOnly'];
    _isEditor = json['isEditor'];
  }
  Tournament? _tournament;
  RoundInfo? _roundInfo;
  String? _customId;
  Status? _status;
  HomeTeam? _homeTeam;
  AwayTeam? _awayTeam;
  HomeScore? _homeScore;
  AwayScore? _awayScore;
  Time? _time;
  Changes? _changes;
  bool? _hasGlobalHighlights;
  bool? _hasEventPlayerStatistics;
  bool? _hasEventPlayerHeatMap;
  num? _detailId;
  bool? _crowdsourcingDataDisplayEnabled;
  num? _id;
  bool? _crowdsourcingEnabled;
  num? _startTimestamp;
  String? _slug;
  bool? _finalResultOnly;
  bool? _isEditor;

  Tournament? get tournament => _tournament;
  RoundInfo? get roundInfo => _roundInfo;
  String? get customId => _customId;
  Status? get status => _status;
  HomeTeam? get homeTeam => _homeTeam;
  AwayTeam? get awayTeam => _awayTeam;
  HomeScore? get homeScore => _homeScore;
  AwayScore? get awayScore => _awayScore;
  Time? get time => _time;
  Changes? get changes => _changes;
  bool? get hasGlobalHighlights => _hasGlobalHighlights;
  bool? get hasEventPlayerStatistics => _hasEventPlayerStatistics;
  bool? get hasEventPlayerHeatMap => _hasEventPlayerHeatMap;
  num? get detailId => _detailId;
  bool? get crowdsourcingDataDisplayEnabled => _crowdsourcingDataDisplayEnabled;
  num? get id => _id;
  bool? get crowdsourcingEnabled => _crowdsourcingEnabled;
  num? get startTimestamp => _startTimestamp;
  String? get slug => _slug;
  bool? get finalResultOnly => _finalResultOnly;
  bool? get isEditor => _isEditor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_tournament != null) {
      map['tournament'] = _tournament?.toJson();
    }
    if (_roundInfo != null) {
      map['roundInfo'] = _roundInfo?.toJson();
    }
    map['customId'] = _customId;
    if (_status != null) {
      map['status'] = _status?.toJson();
    }
    if (_homeTeam != null) {
      map['homeTeam'] = _homeTeam?.toJson();
    }
    if (_awayTeam != null) {
      map['awayTeam'] = _awayTeam?.toJson();
    }
    if (_homeScore != null) {
      map['homeScore'] = _homeScore?.toJson();
    }
    if (_awayScore != null) {
      map['awayScore'] = _awayScore?.toJson();
    }
    if (_time != null) {
      map['time'] = _time?.toJson();
    }
    if (_changes != null) {
      map['changes'] = _changes?.toJson();
    }
    map['hasGlobalHighlights'] = _hasGlobalHighlights;
    map['hasEventPlayerStatistics'] = _hasEventPlayerStatistics;
    map['hasEventPlayerHeatMap'] = _hasEventPlayerHeatMap;
    map['detailId'] = _detailId;
    map['crowdsourcingDataDisplayEnabled'] = _crowdsourcingDataDisplayEnabled;
    map['id'] = _id;
    map['crowdsourcingEnabled'] = _crowdsourcingEnabled;
    map['startTimestamp'] = _startTimestamp;
    map['slug'] = _slug;
    map['finalResultOnly'] = _finalResultOnly;
    map['isEditor'] = _isEditor;
    return map;
  }

}

/// changes : ["status.code","status.description"]
/// changeTimestamp : 1701456740

class Changes {
  Changes({
      List<String>? changes,
      num? changeTimestamp,}){
    _changes = changes;
    _changeTimestamp = changeTimestamp;
}

  Changes.fromJson(dynamic json) {
    _changes = json['changes'] != null ? json['changes'].cast<String>() : [];
    _changeTimestamp = json['changeTimestamp'];
  }
  List<String>? _changes;
  num? _changeTimestamp;

  List<String>? get changes => _changes;
  num? get changeTimestamp => _changeTimestamp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['changes'] = _changes;
    map['changeTimestamp'] = _changeTimestamp;
    return map;
  }

}

/// injuryTime1 : 4
/// currentPeriodStartTimestamp : 1701453768

class Time {
  Time({
      num? injuryTime1, 
      num? currentPeriodStartTimestamp,}){
    _injuryTime1 = injuryTime1;
    _currentPeriodStartTimestamp = currentPeriodStartTimestamp;
}

  Time.fromJson(dynamic json) {
    _injuryTime1 = json['injuryTime1'];
    _currentPeriodStartTimestamp = json['currentPeriodStartTimestamp'];
  }
  num? _injuryTime1;
  num? _currentPeriodStartTimestamp;

  num? get injuryTime1 => _injuryTime1;
  num? get currentPeriodStartTimestamp => _currentPeriodStartTimestamp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['injuryTime1'] = _injuryTime1;
    map['currentPeriodStartTimestamp'] = _currentPeriodStartTimestamp;
    return map;
  }

}

/// current : 0
/// display : 0
/// period1 : 0
/// normaltime : 0

class AwayScore {
  AwayScore({
      num? current, 
      num? display, 
      num? period1, 
      num? normaltime,}){
    _current = current;
    _display = display;
    _period1 = period1;
    _normaltime = normaltime;
}

  AwayScore.fromJson(dynamic json) {
    _current = json['current'];
    _display = json['display'];
    _period1 = json['period1'];
    _normaltime = json['normaltime'];
  }
  num? _current;
  num? _display;
  num? _period1;
  num? _normaltime;

  num? get current => _current;
  num? get display => _display;
  num? get period1 => _period1;
  num? get normaltime => _normaltime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = _current;
    map['display'] = _display;
    map['period1'] = _period1;
    map['normaltime'] = _normaltime;
    return map;
  }

}

/// current : 0
/// display : 0
/// period1 : 0
/// normaltime : 0

class HomeScore {
  HomeScore({
      num? current, 
      num? display, 
      num? period1, 
      num? normaltime,}){
    _current = current;
    _display = display;
    _period1 = period1;
    _normaltime = normaltime;
}

  HomeScore.fromJson(dynamic json) {
    _current = json['current'];
    _display = json['display'];
    _period1 = json['period1'];
    _normaltime = json['normaltime'];
  }
  num? _current;
  num? _display;
  num? _period1;
  num? _normaltime;

  num? get current => _current;
  num? get display => _display;
  num? get period1 => _period1;
  num? get normaltime => _normaltime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = _current;
    map['display'] = _display;
    map['period1'] = _period1;
    map['normaltime'] = _normaltime;
    return map;
  }

}

/// name : "Al-Nassr"
/// slug : "al-nassr"
/// shortName : "Al-Nassr"
/// gender : "M"
/// sport : {"name":"Football","slug":"football","id":1}
/// userCount : 609284
/// nameCode : "ALN"
/// disabled : false
/// national : false
/// type : 0
/// id : 23400
/// country : {"alpha2":"SA","name":"Saudi Arabia"}
/// subTeams : []
/// teamColors : {"primary":"#ffff00","secondary":"#ffff00","text":"#ffff00"}

class AwayTeam {
  AwayTeam({
      String? name, 
      String? slug, 
      String? shortName, 
      String? gender, 
      Sport? sport, 
      num? userCount, 
      String? nameCode, 
      bool? disabled, 
      bool? national, 
      num? type, 
      num? id, 
      Country? country, 
      TeamColors? teamColors,}){
    _name = name;
    _slug = slug;
    _shortName = shortName;
    _gender = gender;
    _sport = sport;
    _userCount = userCount;
    _nameCode = nameCode;
    _disabled = disabled;
    _national = national;
    _type = type;
    _id = id;
    _country = country;
    _teamColors = teamColors;
}

  AwayTeam.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _shortName = json['shortName'];
    _gender = json['gender'];
    _sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    _userCount = json['userCount'];
    _nameCode = json['nameCode'];
    _disabled = json['disabled'];
    _national = json['national'];
    _type = json['type'];
    _id = json['id'];
    _country = json['country'] != null ? Country.fromJson(json['country']) : null;
    _teamColors = json['teamColors'] != null ? TeamColors.fromJson(json['teamColors']) : null;
  }
  String? _name;
  String? _slug;
  String? _shortName;
  String? _gender;
  Sport? _sport;
  num? _userCount;
  String? _nameCode;
  bool? _disabled;
  bool? _national;
  num? _type;
  num? _id;
  Country? _country;
  List<dynamic>? _subTeams;
  TeamColors? _teamColors;

  String? get name => _name;
  String? get slug => _slug;
  String? get shortName => _shortName;
  String? get gender => _gender;
  Sport? get sport => _sport;
  num? get userCount => _userCount;
  String? get nameCode => _nameCode;
  bool? get disabled => _disabled;
  bool? get national => _national;
  num? get type => _type;
  num? get id => _id;
  Country? get country => _country;
  List<dynamic>? get subTeams => _subTeams;
  TeamColors? get teamColors => _teamColors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    map['shortName'] = _shortName;
    map['gender'] = _gender;
    if (_sport != null) {
      map['sport'] = _sport?.toJson();
    }
    map['userCount'] = _userCount;
    map['nameCode'] = _nameCode;
    map['disabled'] = _disabled;
    map['national'] = _national;
    map['type'] = _type;
    map['id'] = _id;
    if (_country != null) {
      map['country'] = _country?.toJson();
    }
    if (_subTeams != null) {
      map['subTeams'] = _subTeams?.map((v) => v.toJson()).toList();
    }
    if (_teamColors != null) {
      map['teamColors'] = _teamColors?.toJson();
    }
    return map;
  }

}

/// primary : "#ffff00"
/// secondary : "#ffff00"
/// text : "#ffff00"

class TeamColors {
  TeamColors({
      String? primary, 
      String? secondary, 
      String? text,}){
    _primary = primary;
    _secondary = secondary;
    _text = text;
}

  TeamColors.fromJson(dynamic json) {
    _primary = json['primary'];
    _secondary = json['secondary'];
    _text = json['text'];
  }
  String? _primary;
  String? _secondary;
  String? _text;

  String? get primary => _primary;
  String? get secondary => _secondary;
  String? get text => _text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['primary'] = _primary;
    map['secondary'] = _secondary;
    map['text'] = _text;
    return map;
  }

}

/// alpha2 : "SA"
/// name : "Saudi Arabia"

class Country {
  Country({
      String? alpha2, 
      String? name,}){
    _alpha2 = alpha2;
    _name = name;
}

  Country.fromJson(dynamic json) {
    _alpha2 = json['alpha2'];
    _name = json['name'];
  }
  String? _alpha2;
  String? _name;

  String? get alpha2 => _alpha2;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['alpha2'] = _alpha2;
    map['name'] = _name;
    return map;
  }

}

/// name : "Football"
/// slug : "football"
/// id : 1

class Sport {
  Sport({
      String? name, 
      String? slug, 
      num? id,}){
    _name = name;
    _slug = slug;
    _id = id;
}

  Sport.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _id = json['id'];
  }
  String? _name;
  String? _slug;
  num? _id;

  String? get name => _name;
  String? get slug => _slug;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    map['id'] = _id;
    return map;
  }

}

/// name : "Al-Hilal"
/// slug : "al-hilal"
/// shortName : "Al-Hilal"
/// gender : "M"
/// sport : {"name":"Football","slug":"football","id":1}
/// userCount : 223968
/// nameCode : "HIL"
/// disabled : false
/// national : false
/// type : 0
/// id : 21895
/// country : {"alpha2":"SA","name":"Saudi Arabia"}
/// subTeams : []
/// teamColors : {"primary":"#0080ff","secondary":"#0080ff","text":"#0080ff"}

class HomeTeam {
  HomeTeam({
      String? name, 
      String? slug, 
      String? shortName, 
      String? gender, 
      Sport? sport, 
      num? userCount, 
      String? nameCode, 
      bool? disabled, 
      bool? national, 
      num? type, 
      num? id, 
      Country? country, 
      List<dynamic>? subTeams, 
      TeamColors? teamColors,}){
    _name = name;
    _slug = slug;
    _shortName = shortName;
    _gender = gender;
    _sport = sport;
    _userCount = userCount;
    _nameCode = nameCode;
    _disabled = disabled;
    _national = national;
    _type = type;
    _id = id;
    _country = country;
    _subTeams = subTeams;
    _teamColors = teamColors;
}

  HomeTeam.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _shortName = json['shortName'];
    _gender = json['gender'];
    _sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    _userCount = json['userCount'];
    _nameCode = json['nameCode'];
    _disabled = json['disabled'];
    _national = json['national'];
    _type = json['type'];
    _id = json['id'];
    _country = json['country'] != null ? Country.fromJson(json['country']) : null;
    _teamColors = json['teamColors'] != null ? TeamColors.fromJson(json['teamColors']) : null;
  }
  String? _name;
  String? _slug;
  String? _shortName;
  String? _gender;
  Sport? _sport;
  num? _userCount;
  String? _nameCode;
  bool? _disabled;
  bool? _national;
  num? _type;
  num? _id;
  Country? _country;
  List<dynamic>? _subTeams;
  TeamColors? _teamColors;

  String? get name => _name;
  String? get slug => _slug;
  String? get shortName => _shortName;
  String? get gender => _gender;
  Sport? get sport => _sport;
  num? get userCount => _userCount;
  String? get nameCode => _nameCode;
  bool? get disabled => _disabled;
  bool? get national => _national;
  num? get type => _type;
  num? get id => _id;
  Country? get country => _country;
  List<dynamic>? get subTeams => _subTeams;
  TeamColors? get teamColors => _teamColors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    map['shortName'] = _shortName;
    map['gender'] = _gender;
    if (_sport != null) {
      map['sport'] = _sport?.toJson();
    }
    map['userCount'] = _userCount;
    map['nameCode'] = _nameCode;
    map['disabled'] = _disabled;
    map['national'] = _national;
    map['type'] = _type;
    map['id'] = _id;
    if (_country != null) {
      map['country'] = _country?.toJson();
    }
    if (_subTeams != null) {
      map['subTeams'] = _subTeams?.map((v) => v.toJson()).toList();
    }
    if (_teamColors != null) {
      map['teamColors'] = _teamColors?.toJson();
    }
    return map;
  }

}

/// primary : "#0080ff"
/// secondary : "#0080ff"
/// text : "#0080ff"


/// alpha2 : "SA"
/// name : "Saudi Arabia"


/// name : "Football"
/// slug : "football"
/// id : 1


/// code : 31
/// description : "Halftime"
/// type : "inprogress"

class Status {
  Status({
      num? code, 
      String? description, 
      String? type,}){
    _code = code;
    _description = description;
    _type = type;
}

  Status.fromJson(dynamic json) {
    _code = json['code'];
    _description = json['description'];
    _type = json['type'];
  }
  num? _code;
  String? _description;
  String? _type;

  num? get code => _code;
  String? get description => _description;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['description'] = _description;
    map['type'] = _type;
    return map;
  }

}

/// round : 15

class RoundInfo {
  RoundInfo({
      num? round,}){
    _round = round;
}

  RoundInfo.fromJson(dynamic json) {
    _round = json['round'];
  }
  num? _round;

  num? get round => _round;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['round'] = _round;
    return map;
  }

}

/// name : "Saudi Professional League"
/// slug : "saudi-professional-league"
/// category : {"name":"Saudi Arabia","slug":"saudi-arabia","sport":{"name":"Football","slug":"football","id":1},"id":310,"flag":"saudi-arabia","alpha2":"SA"}
/// uniqueTournament : {"name":"Saudi Professional League","slug":"saudi-professional-league","primaryColorHex":"#0d1539","secondaryColorHex":"#61ab34","category":{"name":"Saudi Arabia","slug":"saudi-arabia","sport":{"name":"Football","slug":"football","id":1},"id":310,"flag":"saudi-arabia","alpha2":"SA"},"userCount":169007,"id":955,"country":{},"hasEventPlayerStatistics":true,"crowdsourcingEnabled":false,"hasPerformanceGraphFeature":true,"displayInverseHomeAwayTeams":false}
/// priority : 148
/// id : 3708

class Tournament {
  Tournament({
      String? name, 
      String? slug, 
      Category? category, 
      UniqueTournament? uniqueTournament, 
      num? priority, 
      num? id,}){
    _name = name;
    _slug = slug;
    _category = category;
    _uniqueTournament = uniqueTournament;
    _priority = priority;
    _id = id;
}

  Tournament.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
    _uniqueTournament = json['uniqueTournament'] != null ? UniqueTournament.fromJson(json['uniqueTournament']) : null;
    _priority = json['priority'];
    _id = json['id'];
  }
  String? _name;
  String? _slug;
  Category? _category;
  UniqueTournament? _uniqueTournament;
  num? _priority;
  num? _id;

  String? get name => _name;
  String? get slug => _slug;
  Category? get category => _category;
  UniqueTournament? get uniqueTournament => _uniqueTournament;
  num? get priority => _priority;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    if (_uniqueTournament != null) {
      map['uniqueTournament'] = _uniqueTournament?.toJson();
    }
    map['priority'] = _priority;
    map['id'] = _id;
    return map;
  }

}

/// name : "Saudi Professional League"
/// slug : "saudi-professional-league"
/// primaryColorHex : "#0d1539"
/// secondaryColorHex : "#61ab34"
/// category : {"name":"Saudi Arabia","slug":"saudi-arabia","sport":{"name":"Football","slug":"football","id":1},"id":310,"flag":"saudi-arabia","alpha2":"SA"}
/// userCount : 169007
/// id : 955
/// country : {}
/// hasEventPlayerStatistics : true
/// crowdsourcingEnabled : false
/// hasPerformanceGraphFeature : true
/// displayInverseHomeAwayTeams : false

class UniqueTournament {
  UniqueTournament({
      String? name, 
      String? slug, 
      String? primaryColorHex, 
      String? secondaryColorHex, 
      Category? category, 
      num? userCount, 
      num? id, 
      dynamic country, 
      bool? hasEventPlayerStatistics, 
      bool? crowdsourcingEnabled, 
      bool? hasPerformanceGraphFeature, 
      bool? displayInverseHomeAwayTeams,}){
    _name = name;
    _slug = slug;
    _primaryColorHex = primaryColorHex;
    _secondaryColorHex = secondaryColorHex;
    _category = category;
    _userCount = userCount;
    _id = id;
    _country = country;
    _hasEventPlayerStatistics = hasEventPlayerStatistics;
    _crowdsourcingEnabled = crowdsourcingEnabled;
    _hasPerformanceGraphFeature = hasPerformanceGraphFeature;
    _displayInverseHomeAwayTeams = displayInverseHomeAwayTeams;
}

  UniqueTournament.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _primaryColorHex = json['primaryColorHex'];
    _secondaryColorHex = json['secondaryColorHex'];
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
    _userCount = json['userCount'];
    _id = json['id'];
    _country = json['country'];
    _hasEventPlayerStatistics = json['hasEventPlayerStatistics'];
    _crowdsourcingEnabled = json['crowdsourcingEnabled'];
    _hasPerformanceGraphFeature = json['hasPerformanceGraphFeature'];
    _displayInverseHomeAwayTeams = json['displayInverseHomeAwayTeams'];
  }
  String? _name;
  String? _slug;
  String? _primaryColorHex;
  String? _secondaryColorHex;
  Category? _category;
  num? _userCount;
  num? _id;
  dynamic _country;
  bool? _hasEventPlayerStatistics;
  bool? _crowdsourcingEnabled;
  bool? _hasPerformanceGraphFeature;
  bool? _displayInverseHomeAwayTeams;

  String? get name => _name;
  String? get slug => _slug;
  String? get primaryColorHex => _primaryColorHex;
  String? get secondaryColorHex => _secondaryColorHex;
  Category? get category => _category;
  num? get userCount => _userCount;
  num? get id => _id;
  dynamic get country => _country;
  bool? get hasEventPlayerStatistics => _hasEventPlayerStatistics;
  bool? get crowdsourcingEnabled => _crowdsourcingEnabled;
  bool? get hasPerformanceGraphFeature => _hasPerformanceGraphFeature;
  bool? get displayInverseHomeAwayTeams => _displayInverseHomeAwayTeams;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    map['primaryColorHex'] = _primaryColorHex;
    map['secondaryColorHex'] = _secondaryColorHex;
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    map['userCount'] = _userCount;
    map['id'] = _id;
    map['country'] = _country;
    map['hasEventPlayerStatistics'] = _hasEventPlayerStatistics;
    map['crowdsourcingEnabled'] = _crowdsourcingEnabled;
    map['hasPerformanceGraphFeature'] = _hasPerformanceGraphFeature;
    map['displayInverseHomeAwayTeams'] = _displayInverseHomeAwayTeams;
    return map;
  }

}

/// name : "Saudi Arabia"
/// slug : "saudi-arabia"
/// sport : {"name":"Football","slug":"football","id":1}
/// id : 310
/// flag : "saudi-arabia"
/// alpha2 : "SA"

class Category {
  Category({
      String? name, 
      String? slug, 
      Sport? sport, 
      num? id, 
      String? flag, 
      String? alpha2,}){
    _name = name;
    _slug = slug;
    _sport = sport;
    _id = id;
    _flag = flag;
    _alpha2 = alpha2;
}

  Category.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    _id = json['id'];
    _flag = json['flag'];
    _alpha2 = json['alpha2'];
  }
  String? _name;
  String? _slug;
  Sport? _sport;
  num? _id;
  String? _flag;
  String? _alpha2;

  String? get name => _name;
  String? get slug => _slug;
  Sport? get sport => _sport;
  num? get id => _id;
  String? get flag => _flag;
  String? get alpha2 => _alpha2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    if (_sport != null) {
      map['sport'] = _sport?.toJson();
    }
    map['id'] = _id;
    map['flag'] = _flag;
    map['alpha2'] = _alpha2;
    return map;
  }

}
