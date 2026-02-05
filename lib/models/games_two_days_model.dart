class GamesTwoDays {
  String? status;
  int? count;
  List<Data>? data;
  int? offset;
  String? traceId;

  GamesTwoDays({this.status, this.count, this.data, this.offset, this.traceId});

  GamesTwoDays.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    count = json['count'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    offset = json['offset'];
    traceId = json['traceId'];
  }
}

class Data {
  int? id;
  String? flashId;
  String? date;
  int? dateUtc;
  int? status;
  String? statusName;
  Null homeResult;
  Null awayResult;
  Null homeHTResult;
  Null awayHTResult;
  Null homeFTResult;
  Null awayFTResult;
  HomeTeam? homeTeam;
  HomeTeam? awayTeam;
  Season? season;
  String? roundName;
  List<MarketOdds>? odds;
  List<String>? periods;

  Data({
    this.id,
    this.flashId,
    this.date,
    this.dateUtc,
    this.status,
    this.statusName,
    this.homeResult,
    this.awayResult,
    this.homeHTResult,
    this.awayHTResult,
    this.homeFTResult,
    this.awayFTResult,
    this.homeTeam,
    this.awayTeam,
    this.season,
    this.roundName,
    this.odds,
    this.periods,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    flashId = json['flashId'];
    date = json['date'];
    dateUtc = json['dateUtc'];
    status = json['status'];
    statusName = json['statusName'];
    homeResult = json['homeResult'];
    awayResult = json['awayResult'];
    homeHTResult = json['homeHTResult'];
    awayHTResult = json['awayHTResult'];
    homeFTResult = json['homeFTResult'];
    awayFTResult = json['awayFTResult'];
    homeTeam = json['homeTeam'] != null
        ? HomeTeam.fromJson(json['homeTeam'])
        : null;
    awayTeam = json['awayTeam'] != null
        ? HomeTeam.fromJson(json['awayTeam'])
        : null;
    season = json['season'] != null ? Season.fromJson(json['season']) : null;
    roundName = json['roundName'];
    if (json['odds'] != null) {
      odds = <MarketOdds>[];
      json['odds'].forEach((v) {
        odds!.add(MarketOdds.fromJson(v));
      });
    }
    //periods = json['periods'].cast<String>();
    periods =  json["periods"] == null? [] : List<String>.from(json["periods"].map((x) => x));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['flashId'] = flashId;
    data['date'] = date;
    data['dateUtc'] = dateUtc;
    data['status'] = status;
    data['statusName'] = statusName;
    data['homeResult'] = homeResult;
    data['awayResult'] = awayResult;
    data['homeHTResult'] = homeHTResult;
    data['awayHTResult'] = awayHTResult;
    data['homeFTResult'] = homeFTResult;
    data['awayFTResult'] = awayFTResult;
    if (homeTeam != null) {
      data['homeTeam'] = homeTeam!.toJson();
    }
    if (awayTeam != null) {
      data['awayTeam'] = awayTeam!.toJson();
    }
    if (season != null) {
      data['season'] = season!.toJson();
    }
    data['roundName'] = roundName;
    if (odds != null) {
      data['odds'] = odds!.map((v) => v.toJson()).toList();
    }
    data['periods'] = periods;
    return data;
  }
}

class HomeTeam {
  int? id;
  String? name;
  String? flashId;
  Country? country;

  HomeTeam({this.id, this.name, this.flashId, this.country});

  HomeTeam.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    flashId = json['flashId'];
    country = json['country'] != null
        ? Country.fromJson(json['country'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['flashId'] = flashId;
    if (country != null) {
      data['country'] = country!.toJson();
    }
    return data;
  }
}

class Country {
  String? code;
  String? name;

  Country({this.code, this.name});

  Country.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    return data;
  }
}

class Season {
  String? uid;
  int? year;
  League? league;

  Season({this.uid, this.year, this.league});

  Season.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    year = json['year'];
    league = json['league'] != null ? League.fromJson(json['league']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = uid;
    data['year'] = year;
    if (league != null) {
      data['league'] = league!.toJson();
    }
    return data;
  }
}

class League {
  int? id;
  String? name;
  Country? country;
  String? flashScoreId;

  League({this.id, this.name, this.country, this.flashScoreId});

  League.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    country = json['country'] != null
        ? Country.fromJson(json['country'])
        : null;
    flashScoreId = json['flashScoreId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (country != null) {
      data['country'] = country!.toJson();
    }
    data['flashScoreId'] = flashScoreId;
    return data;
  }
}

class MarketOdds {
  int? marketId;
  Null marketName;
  List<Odds>? odds;

  MarketOdds({this.marketId, this.marketName, this.odds});

  MarketOdds.fromJson(Map<String, dynamic> json) {
    marketId = json['marketId'];
    marketName = json['marketName'];
    if (json['odds'] != null) {
      odds = <Odds>[];
      json['odds'].forEach((v) {
        odds!.add(Odds.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['marketId'] = marketId;
    data['marketName'] = marketName;
    if (odds != null) {
      data['odds'] = odds!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Odds {
  String? name;
  double? value;
  Null openingValue;

  Odds({this.name, this.value, this.openingValue});

  Odds.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value']?.toDouble();
    openingValue = json['openingValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;
    data['openingValue'] = openingValue;
    return data;
  }
}
