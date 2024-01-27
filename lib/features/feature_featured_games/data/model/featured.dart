import 'package:sportapp/features/feature_featured_games/domain/entities/featured_entity.dart';

/// type : 9
/// action : 11
/// actionValue : "203667"
/// reason : "formulaOne"
/// createdBy : 2
/// reasonSuborder : 0
/// visible : true
/// position : 6
/// dismissible : false
/// id : 152431
/// polePositionWinner : {"name":"Leclerc C.","slug":"leclerc-charles","shortName":"Leclerc C.","gender":"M","sport":{"name":"Motorsport","slug":"motorsport","id":11},"userCount":17129,"playerTeamInfo":{"id":3640},"nameCode":"LEC","national":false,"parentTeam":{"name":"Ferrari","slug":"ferrari","shortName":"Ferrari","gender":"M","sport":{"name":"Motorsport","slug":"motorsport","id":11},"userCount":1,"nameCode":"FER","disabled":false,"national":false,"type":0,"id":214908,"country":{"alpha2":"IT","name":"Italy"},"subTeams":[],"teamColors":{"primary":"#dc0000","secondary":"#222226","text":"#222226"}},"type":1,"id":226818,"country":{"alpha2":"MC","name":"Monaco"},"subTeams":[],"teamColors":{"primary":"#52b030","secondary":"#52b030","text":"#ffffff"}}
/// race : {"stage":{"uniqueStage":{"category":{"name":"Formula 1","slug":"formula-1","sport":{"name":"Motorsport","slug":"motorsport","id":11},"id":36,"flag":"formula-1"},"name":"Formula 1","slug":"formula-1","id":40},"description":"Race","slug":"race","type":{"id":6,"name":"Race"},"status":{"description":"Not started","type":"notstarted"},"year":"2023","id":203828,"country":{},"name":"Race","startDateTimestamp":1698001200,"endDateTimestamp":1698008400,"seasonStageName":"Formula 1 2023","stageParent":{"description":"USA GP","id":203667,"startDateTimestamp":1697823000}},"laps":56,"standings":[]}
/// visibleFromTimestamp : 1697821200
/// visibleToTimestamp : 1698058800

class Featured {
  const Featured({
      num? type,
      num? action,
      String? actionValue,
      String? reason,
      num? createdBy,
      num? reasonSuborder,
      bool? visible,
      num? position, 
      bool? dismissible, 
      num? id, 
      PolePositionWinner? polePositionWinner, 
      Race? race, 
      num? visibleFromTimestamp, 
      num? visibleToTimestamp,}
      );

  factory Featured.fromJson(dynamic json) {
    return Featured(
      type: json['type'],
      action: json['action'],
      actionValue: json['actionValue'],
      reason: json['reason'],
      createdBy: json['createdBy'],
      reasonSuborder: json['reasonSuborder'],
      visible: json['visible'],
      position: json['position'],
      dismissible: json['dismissible'],
      id: json['id'],
      polePositionWinner: json['polePositionWinner'] != null ? PolePositionWinner.fromJson(json['polePositionWinner']) : null,
      race: json['race'] != null ? Race.fromJson(json['race']) : null,
      visibleFromTimestamp: json['visibleFromTimestamp'],
      visibleToTimestamp: json['visibleToTimestamp']
    );

  }



}

/// stage : {"uniqueStage":{"category":{"name":"Formula 1","slug":"formula-1","sport":{"name":"Motorsport","slug":"motorsport","id":11},"id":36,"flag":"formula-1"},"name":"Formula 1","slug":"formula-1","id":40},"description":"Race","slug":"race","type":{"id":6,"name":"Race"},"status":{"description":"Not started","type":"notstarted"},"year":"2023","id":203828,"country":{},"name":"Race","startDateTimestamp":1698001200,"endDateTimestamp":1698008400,"seasonStageName":"Formula 1 2023","stageParent":{"description":"USA GP","id":203667,"startDateTimestamp":1697823000}}
/// laps : 56
/// standings : []

class Race {
  Race({
      Stage? stage, 
      num? laps, 
      List<dynamic>? standings,}){
    _stage = stage;
    _laps = laps;
    _standings = standings;
}

  Race.fromJson(dynamic json) {
    _stage = json['stage'] != null ? Stage.fromJson(json['stage']) : null;
    _laps = json['laps'];
    if (json['standings'] != null) {
      _standings = [];
    }
  }
  Stage? _stage;
  num? _laps;
  List<dynamic>? _standings;
Race copyWith({  Stage? stage,
  num? laps,
  List<dynamic>? standings,
}) => Race(  stage: stage ?? _stage,
  laps: laps ?? _laps,
  standings: standings ?? _standings,
);
  Stage? get stage => _stage;
  num? get laps => _laps;
  List<dynamic>? get standings => _standings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_stage != null) {
      map['stage'] = _stage?.toJson();
    }
    map['laps'] = _laps;
    if (_standings != null) {
      map['standings'] = _standings?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// uniqueStage : {"category":{"name":"Formula 1","slug":"formula-1","sport":{"name":"Motorsport","slug":"motorsport","id":11},"id":36,"flag":"formula-1"},"name":"Formula 1","slug":"formula-1","id":40}
/// description : "Race"
/// slug : "race"
/// type : {"id":6,"name":"Race"}
/// status : {"description":"Not started","type":"notstarted"}
/// year : "2023"
/// id : 203828
/// country : {}
/// name : "Race"
/// startDateTimestamp : 1698001200
/// endDateTimestamp : 1698008400
/// seasonStageName : "Formula 1 2023"
/// stageParent : {"description":"USA GP","id":203667,"startDateTimestamp":1697823000}

class Stage {
  Stage({
      UniqueStage? uniqueStage, 
      String? description, 
      String? slug, 
      Type? type, 
      Status? status, 
      String? year, 
      num? id, 
      dynamic country, 
      String? name, 
      num? startDateTimestamp, 
      num? endDateTimestamp, 
      String? seasonStageName, 
      StageParent? stageParent,}){
    _uniqueStage = uniqueStage;
    _description = description;
    _slug = slug;
    _type = type;
    _status = status;
    _year = year;
    _id = id;
    _country = country;
    _name = name;
    _startDateTimestamp = startDateTimestamp;
    _endDateTimestamp = endDateTimestamp;
    _seasonStageName = seasonStageName;
    _stageParent = stageParent;
}

  Stage.fromJson(dynamic json) {
    _uniqueStage = json['uniqueStage'] != null ? UniqueStage.fromJson(json['uniqueStage']) : null;
    _description = json['description'];
    _slug = json['slug'];
    _type = json['type'] != null ? Type.fromJson(json['type']) : null;
    _status = json['status'] != null ? Status.fromJson(json['status']) : null;
    _year = json['year'];
    _id = json['id'];
    _country = json['country'];
    _name = json['name'];
    _startDateTimestamp = json['startDateTimestamp'];
    _endDateTimestamp = json['endDateTimestamp'];
    _seasonStageName = json['seasonStageName'];
    _stageParent = json['stageParent'] != null ? StageParent.fromJson(json['stageParent']) : null;
  }
  UniqueStage? _uniqueStage;
  String? _description;
  String? _slug;
  Type? _type;
  Status? _status;
  String? _year;
  num? _id;
  dynamic _country;
  String? _name;
  num? _startDateTimestamp;
  num? _endDateTimestamp;
  String? _seasonStageName;
  StageParent? _stageParent;
Stage copyWith({  UniqueStage? uniqueStage,
  String? description,
  String? slug,
  Type? type,
  Status? status,
  String? year,
  num? id,
  dynamic country,
  String? name,
  num? startDateTimestamp,
  num? endDateTimestamp,
  String? seasonStageName,
  StageParent? stageParent,
}) => Stage(  uniqueStage: uniqueStage ?? _uniqueStage,
  description: description ?? _description,
  slug: slug ?? _slug,
  type: type ?? _type,
  status: status ?? _status,
  year: year ?? _year,
  id: id ?? _id,
  country: country ?? _country,
  name: name ?? _name,
  startDateTimestamp: startDateTimestamp ?? _startDateTimestamp,
  endDateTimestamp: endDateTimestamp ?? _endDateTimestamp,
  seasonStageName: seasonStageName ?? _seasonStageName,
  stageParent: stageParent ?? _stageParent,
);
  UniqueStage? get uniqueStage => _uniqueStage;
  String? get description => _description;
  String? get slug => _slug;
  Type? get type => _type;
  Status? get status => _status;
  String? get year => _year;
  num? get id => _id;
  dynamic get country => _country;
  String? get name => _name;
  num? get startDateTimestamp => _startDateTimestamp;
  num? get endDateTimestamp => _endDateTimestamp;
  String? get seasonStageName => _seasonStageName;
  StageParent? get stageParent => _stageParent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_uniqueStage != null) {
      map['uniqueStage'] = _uniqueStage?.toJson();
    }
    map['description'] = _description;
    map['slug'] = _slug;
    if (_type != null) {
      map['type'] = _type?.toJson();
    }
    if (_status != null) {
      map['status'] = _status?.toJson();
    }
    map['year'] = _year;
    map['id'] = _id;
    map['country'] = _country;
    map['name'] = _name;
    map['startDateTimestamp'] = _startDateTimestamp;
    map['endDateTimestamp'] = _endDateTimestamp;
    map['seasonStageName'] = _seasonStageName;
    if (_stageParent != null) {
      map['stageParent'] = _stageParent?.toJson();
    }
    return map;
  }

}

/// description : "USA GP"
/// id : 203667
/// startDateTimestamp : 1697823000

class StageParent {
  StageParent({
      String? description, 
      num? id, 
      num? startDateTimestamp,}){
    _description = description;
    _id = id;
    _startDateTimestamp = startDateTimestamp;
}

  StageParent.fromJson(dynamic json) {
    _description = json['description'];
    _id = json['id'];
    _startDateTimestamp = json['startDateTimestamp'];
  }
  String? _description;
  num? _id;
  num? _startDateTimestamp;
StageParent copyWith({  String? description,
  num? id,
  num? startDateTimestamp,
}) => StageParent(  description: description ?? _description,
  id: id ?? _id,
  startDateTimestamp: startDateTimestamp ?? _startDateTimestamp,
);
  String? get description => _description;
  num? get id => _id;
  num? get startDateTimestamp => _startDateTimestamp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = _description;
    map['id'] = _id;
    map['startDateTimestamp'] = _startDateTimestamp;
    return map;
  }

}

/// description : "Not started"
/// type : "notstarted"

class Status {
  Status({
      String? description, 
      String? type,}){
    _description = description;
    _type = type;
}

  Status.fromJson(dynamic json) {
    _description = json['description'];
    _type = json['type'];
  }
  String? _description;
  String? _type;
Status copyWith({  String? description,
  String? type,
}) => Status(  description: description ?? _description,
  type: type ?? _type,
);
  String? get description => _description;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = _description;
    map['type'] = _type;
    return map;
  }

}

/// id : 6
/// name : "Race"

class Type {
  Type({
      num? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Type.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num? _id;
  String? _name;
Type copyWith({  num? id,
  String? name,
}) => Type(  id: id ?? _id,
  name: name ?? _name,
);
  num? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}

/// category : {"name":"Formula 1","slug":"formula-1","sport":{"name":"Motorsport","slug":"motorsport","id":11},"id":36,"flag":"formula-1"}
/// name : "Formula 1"
/// slug : "formula-1"
/// id : 40

class UniqueStage {
  UniqueStage({
      Category? category, 
      String? name, 
      String? slug, 
      num? id,}){
    _category = category;
    _name = name;
    _slug = slug;
    _id = id;
}

  UniqueStage.fromJson(dynamic json) {
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
    _name = json['name'];
    _slug = json['slug'];
    _id = json['id'];
  }
  Category? _category;
  String? _name;
  String? _slug;
  num? _id;
UniqueStage copyWith({  Category? category,
  String? name,
  String? slug,
  num? id,
}) => UniqueStage(  category: category ?? _category,
  name: name ?? _name,
  slug: slug ?? _slug,
  id: id ?? _id,
);
  Category? get category => _category;
  String? get name => _name;
  String? get slug => _slug;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    map['name'] = _name;
    map['slug'] = _slug;
    map['id'] = _id;
    return map;
  }

}

/// name : "Formula 1"
/// slug : "formula-1"
/// sport : {"name":"Motorsport","slug":"motorsport","id":11}
/// id : 36
/// flag : "formula-1"

class Category {
  Category({
      String? name, 
      String? slug, 
      Sport? sport, 
      num? id, 
      String? flag,}){
    _name = name;
    _slug = slug;
    _sport = sport;
    _id = id;
    _flag = flag;
}

  Category.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    _id = json['id'];
    _flag = json['flag'];
  }
  String? _name;
  String? _slug;
  Sport? _sport;
  num? _id;
  String? _flag;
Category copyWith({  String? name,
  String? slug,
  Sport? sport,
  num? id,
  String? flag,
}) => Category(  name: name ?? _name,
  slug: slug ?? _slug,
  sport: sport ?? _sport,
  id: id ?? _id,
  flag: flag ?? _flag,
);
  String? get name => _name;
  String? get slug => _slug;
  Sport? get sport => _sport;
  num? get id => _id;
  String? get flag => _flag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['slug'] = _slug;
    if (_sport != null) {
      map['sport'] = _sport?.toJson();
    }
    map['id'] = _id;
    map['flag'] = _flag;
    return map;
  }

}

/// name : "Motorsport"
/// slug : "motorsport"
/// id : 11

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
Sport copyWith({  String? name,
  String? slug,
  num? id,
}) => Sport(  name: name ?? _name,
  slug: slug ?? _slug,
  id: id ?? _id,
);
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

/// name : "Leclerc C."
/// slug : "leclerc-charles"
/// shortName : "Leclerc C."
/// gender : "M"
/// sport : {"name":"Motorsport","slug":"motorsport","id":11}
/// userCount : 17129
/// playerTeamInfo : {"id":3640}
/// nameCode : "LEC"
/// national : false
/// parentTeam : {"name":"Ferrari","slug":"ferrari","shortName":"Ferrari","gender":"M","sport":{"name":"Motorsport","slug":"motorsport","id":11},"userCount":1,"nameCode":"FER","disabled":false,"national":false,"type":0,"id":214908,"country":{"alpha2":"IT","name":"Italy"},"subTeams":[],"teamColors":{"primary":"#dc0000","secondary":"#222226","text":"#222226"}}
/// type : 1
/// id : 226818
/// country : {"alpha2":"MC","name":"Monaco"}
/// subTeams : []
/// teamColors : {"primary":"#52b030","secondary":"#52b030","text":"#ffffff"}

class PolePositionWinner {
  PolePositionWinner({
      String? name, 
      String? slug, 
      String? shortName, 
      String? gender, 
      Sport? sport, 
      num? userCount, 
      PlayerTeamInfo? playerTeamInfo, 
      String? nameCode, 
      bool? national, 
      ParentTeam? parentTeam, 
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
    _playerTeamInfo = playerTeamInfo;
    _nameCode = nameCode;
    _national = national;
    _parentTeam = parentTeam;
    _type = type;
    _id = id;
    _country = country;
    _subTeams = subTeams;
    _teamColors = teamColors;
}

  PolePositionWinner.fromJson(dynamic json) {
    _name = json['name'];
    _slug = json['slug'];
    _shortName = json['shortName'];
    _gender = json['gender'];
    _sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    _userCount = json['userCount'];
    _playerTeamInfo = json['playerTeamInfo'] != null ? PlayerTeamInfo.fromJson(json['playerTeamInfo']) : null;
    _nameCode = json['nameCode'];
    _national = json['national'];
    _parentTeam = json['parentTeam'] != null ? ParentTeam.fromJson(json['parentTeam']) : null;
    _type = json['type'];
    _id = json['id'];
    _country = json['country'] != null ? Country.fromJson(json['country']) : null;
    if (json['subTeams'] != null) {
      _subTeams = [];

    }
    _teamColors = json['teamColors'] != null ? TeamColors.fromJson(json['teamColors']) : null;
  }
  String? _name;
  String? _slug;
  String? _shortName;
  String? _gender;
  Sport? _sport;
  num? _userCount;
  PlayerTeamInfo? _playerTeamInfo;
  String? _nameCode;
  bool? _national;
  ParentTeam? _parentTeam;
  num? _type;
  num? _id;
  Country? _country;
  List<dynamic>? _subTeams;
  TeamColors? _teamColors;
PolePositionWinner copyWith({  String? name,
  String? slug,
  String? shortName,
  String? gender,
  Sport? sport,
  num? userCount,
  PlayerTeamInfo? playerTeamInfo,
  String? nameCode,
  bool? national,
  ParentTeam? parentTeam,
  num? type,
  num? id,
  Country? country,
  List<dynamic>? subTeams,
  TeamColors? teamColors,
}) => PolePositionWinner(  name: name ?? _name,
  slug: slug ?? _slug,
  shortName: shortName ?? _shortName,
  gender: gender ?? _gender,
  sport: sport ?? _sport,
  userCount: userCount ?? _userCount,
  playerTeamInfo: playerTeamInfo ?? _playerTeamInfo,
  nameCode: nameCode ?? _nameCode,
  national: national ?? _national,
  parentTeam: parentTeam ?? _parentTeam,
  type: type ?? _type,
  id: id ?? _id,
  country: country ?? _country,
  subTeams: subTeams ?? _subTeams,
  teamColors: teamColors ?? _teamColors,
);
  String? get name => _name;
  String? get slug => _slug;
  String? get shortName => _shortName;
  String? get gender => _gender;
  Sport? get sport => _sport;
  num? get userCount => _userCount;
  PlayerTeamInfo? get playerTeamInfo => _playerTeamInfo;
  String? get nameCode => _nameCode;
  bool? get national => _national;
  ParentTeam? get parentTeam => _parentTeam;
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
    if (_playerTeamInfo != null) {
      map['playerTeamInfo'] = _playerTeamInfo?.toJson();
    }
    map['nameCode'] = _nameCode;
    map['national'] = _national;
    if (_parentTeam != null) {
      map['parentTeam'] = _parentTeam?.toJson();
    }
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

/// primary : "#52b030"
/// secondary : "#52b030"
/// text : "#ffffff"

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
TeamColors copyWith({  String? primary,
  String? secondary,
  String? text,
}) => TeamColors(  primary: primary ?? _primary,
  secondary: secondary ?? _secondary,
  text: text ?? _text,
);
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

/// alpha2 : "MC"
/// name : "Monaco"

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
Country copyWith({  String? alpha2,
  String? name,
}) => Country(  alpha2: alpha2 ?? _alpha2,
  name: name ?? _name,
);
  String? get alpha2 => _alpha2;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['alpha2'] = _alpha2;
    map['name'] = _name;
    return map;
  }

}

/// name : "Ferrari"
/// slug : "ferrari"
/// shortName : "Ferrari"
/// gender : "M"
/// sport : {"name":"Motorsport","slug":"motorsport","id":11}
/// userCount : 1
/// nameCode : "FER"
/// disabled : false
/// national : false
/// type : 0
/// id : 214908
/// country : {"alpha2":"IT","name":"Italy"}
/// subTeams : []
/// teamColors : {"primary":"#dc0000","secondary":"#222226","text":"#222226"}

class ParentTeam {
  ParentTeam({
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

  ParentTeam.fromJson(dynamic json) {
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
    if (json['subTeams'] != null) {
      _subTeams = [];
    }
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
ParentTeam copyWith({  String? name,
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
  TeamColors? teamColors,
}) => ParentTeam(  name: name ?? _name,
  slug: slug ?? _slug,
  shortName: shortName ?? _shortName,
  gender: gender ?? _gender,
  sport: sport ?? _sport,
  userCount: userCount ?? _userCount,
  nameCode: nameCode ?? _nameCode,
  disabled: disabled ?? _disabled,
  national: national ?? _national,
  type: type ?? _type,
  id: id ?? _id,
  country: country ?? _country,
  subTeams: subTeams ?? _subTeams,
  teamColors: teamColors ?? _teamColors,
);
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

/// primary : "#dc0000"
/// secondary : "#222226"
/// text : "#222226"


/// alpha2 : "IT"
/// name : "Italy"

/// name : "Motorsport"
/// slug : "motorsport"
/// id : 11


/// id : 3640

class PlayerTeamInfo {
  PlayerTeamInfo({
      num? id,}){
    _id = id;
}

  PlayerTeamInfo.fromJson(dynamic json) {
    _id = json['id'];
  }
  num? _id;
PlayerTeamInfo copyWith({  num? id,
}) => PlayerTeamInfo(  id: id ?? _id,
);
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }

}

/// name : "Motorsport"
/// slug : "motorsport"
/// id : 11
