class ApiResult {
  int page;
  int totalPages;
  int totalResults;
  String type;
  int count;
  List<Players> items;

  ApiResult(
      {this.page,
        this.totalPages,
        this.totalResults,
        this.type,
        this.count,
        this.items});

  ApiResult.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    totalPages = json['totalPages'];
    totalResults = json['totalResults'];
    type = json['type'];
    count = json['count'];
    if (json['items'] != null) {
      items = new List<Players>();
      json['items'].forEach((v) {
        items.add(new Players.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['totalPages'] = this.totalPages;
    data['totalResults'] = this.totalResults;
    data['type'] = this.type;
    data['count'] = this.count;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Players {
  String commonName;
  String firstName;
  String lastName;
  League league;
  Nation nation;
  Club club;
  Headshot headshot;
  String position;
  int composure;
  String playStyle;
  Null playStyleId;
  int height;
  int weight;
  String birthdate;
  int age;
  int acceleration;
  int aggression;
  int agility;
  int balance;
  int ballcontrol;
  String foot;
  int skillMoves;
  int crossing;
  int curve;
  int dribbling;
  int finishing;
  int freekickaccuracy;
  int gkdiving;
  int gkhandling;
  int gkkicking;
  int gkpositioning;
  int gkreflexes;
  int headingaccuracy;
  int interceptions;
  int jumping;
  int longpassing;
  int longshots;
  int marking;
  int penalties;
  int positioning;
  int potential;
  int reactions;
  int shortpassing;
  int shotpower;
  int slidingtackle;
  int sprintspeed;
  int standingtackle;
  int stamina;
  int strength;
  int vision;
  int volleys;
  int weakFoot;
  List<String> traits;
  List<String> specialities;
  String atkWorkRate;
  String defWorkRate;
  Null playerType;
  List<Attributes> attributes;
  String name;
  int rarityId;
  bool isIcon;
  String quality;
  bool isGK;
  String positionFull;
  bool isSpecialType;
  Null contracts;
  Null fitness;
  Null rawAttributeChemistryBonus;
  Null isLoan;
  Null squadPosition;
  IconAttributes iconAttributes;
  String itemType;
  Null discardValue;
  String id;
  String modelName;
  int baseId;
  int rating;

  Players(
      {this.commonName,
        this.firstName,
        this.lastName,
        this.league,
        this.nation,
        this.club,
        this.headshot,
        this.position,
        this.composure,
        this.playStyle,
        this.playStyleId,
        this.height,
        this.weight,
        this.birthdate,
        this.age,
        this.acceleration,
        this.aggression,
        this.agility,
        this.balance,
        this.ballcontrol,
        this.foot,
        this.skillMoves,
        this.crossing,
        this.curve,
        this.dribbling,
        this.finishing,
        this.freekickaccuracy,
        this.gkdiving,
        this.gkhandling,
        this.gkkicking,
        this.gkpositioning,
        this.gkreflexes,
        this.headingaccuracy,
        this.interceptions,
        this.jumping,
        this.longpassing,
        this.longshots,
        this.marking,
        this.penalties,
        this.positioning,
        this.potential,
        this.reactions,
        this.shortpassing,
        this.shotpower,
        this.slidingtackle,
        this.sprintspeed,
        this.standingtackle,
        this.stamina,
        this.strength,
        this.vision,
        this.volleys,
        this.weakFoot,
        this.traits,
        this.specialities,
        this.atkWorkRate,
        this.defWorkRate,
        this.playerType,
        this.attributes,
        this.name,
        this.rarityId,
        this.isIcon,
        this.quality,
        this.isGK,
        this.positionFull,
        this.isSpecialType,
        this.contracts,
        this.fitness,
        this.rawAttributeChemistryBonus,
        this.isLoan,
        this.squadPosition,
        this.iconAttributes,
        this.itemType,
        this.discardValue,
        this.id,
        this.modelName,
        this.baseId,
        this.rating});

  Players.fromJson(Map<String, dynamic> json) {
    commonName = json['commonName'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    league =
    json['league'] != null ? new League.fromJson(json['league']) : null;
    nation =
    json['nation'] != null ? new Nation.fromJson(json['nation']) : null;
    club = json['club'] != null ? new Club.fromJson(json['club']) : null;
    headshot = json['headshot'] != null
        ? new Headshot.fromJson(json['headshot'])
        : null;
    position = json['position'];
    composure = json['composure'];
    playStyle = json['playStyle'];
    playStyleId = json['playStyleId'];
    height = json['height'];
    weight = json['weight'];
    birthdate = json['birthdate'];
    age = json['age'];
    acceleration = json['acceleration'];
    aggression = json['aggression'];
    agility = json['agility'];
    balance = json['balance'];
    ballcontrol = json['ballcontrol'];
    foot = json['foot'];
    skillMoves = json['skillMoves'];
    crossing = json['crossing'];
    curve = json['curve'];
    dribbling = json['dribbling'];
    finishing = json['finishing'];
    freekickaccuracy = json['freekickaccuracy'];
    gkdiving = json['gkdiving'];
    gkhandling = json['gkhandling'];
    gkkicking = json['gkkicking'];
    gkpositioning = json['gkpositioning'];
    gkreflexes = json['gkreflexes'];
    headingaccuracy = json['headingaccuracy'];
    interceptions = json['interceptions'];
    jumping = json['jumping'];
    longpassing = json['longpassing'];
    longshots = json['longshots'];
    marking = json['marking'];
    penalties = json['penalties'];
    positioning = json['positioning'];
    potential = json['potential'];
    reactions = json['reactions'];
    shortpassing = json['shortpassing'];
    shotpower = json['shotpower'];
    slidingtackle = json['slidingtackle'];
    sprintspeed = json['sprintspeed'];
    standingtackle = json['standingtackle'];
    stamina = json['stamina'];
    strength = json['strength'];
    vision = json['vision'];
    volleys = json['volleys'];
    weakFoot = json['weakFoot'];
    //traits = json['traits'].cast<String>();
    //specialities = json['specialities'].cast<String>();
    atkWorkRate = json['atkWorkRate'];
    defWorkRate = json['defWorkRate'];
    playerType = json['playerType'];
    if (json['attributes'] != null) {
      attributes = new List<Attributes>();
      json['attributes'].forEach((v) {
        attributes.add(new Attributes.fromJson(v));
      });
    }
    name = json['name'];
    rarityId = json['rarityId'];
    isIcon = json['isIcon'];
    quality = json['quality'];
    isGK = json['isGK'];
    positionFull = json['positionFull'];
    isSpecialType = json['isSpecialType'];
    contracts = json['contracts'];
    fitness = json['fitness'];
    rawAttributeChemistryBonus = json['rawAttributeChemistryBonus'];
    isLoan = json['isLoan'];
    squadPosition = json['squadPosition'];
    iconAttributes = json['iconAttributes'] != null
        ? new IconAttributes.fromJson(json['iconAttributes'])
        : null;
    itemType = json['itemType'];
    discardValue = json['discardValue'];
    id = json['id'];
    modelName = json['modelName'];
    baseId = json['baseId'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['commonName'] = this.commonName;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    if (this.league != null) {
      data['league'] = this.league.toJson();
    }
    if (this.nation != null) {
      data['nation'] = this.nation.toJson();
    }
    if (this.club != null) {
      data['club'] = this.club.toJson();
    }
    if (this.headshot != null) {
      data['headshot'] = this.headshot.toJson();
    }
    data['position'] = this.position;
    data['composure'] = this.composure;
    data['playStyle'] = this.playStyle;
    data['playStyleId'] = this.playStyleId;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['birthdate'] = this.birthdate;
    data['age'] = this.age;
    data['acceleration'] = this.acceleration;
    data['aggression'] = this.aggression;
    data['agility'] = this.agility;
    data['balance'] = this.balance;
    data['ballcontrol'] = this.ballcontrol;
    data['foot'] = this.foot;
    data['skillMoves'] = this.skillMoves;
    data['crossing'] = this.crossing;
    data['curve'] = this.curve;
    data['dribbling'] = this.dribbling;
    data['finishing'] = this.finishing;
    data['freekickaccuracy'] = this.freekickaccuracy;
    data['gkdiving'] = this.gkdiving;
    data['gkhandling'] = this.gkhandling;
    data['gkkicking'] = this.gkkicking;
    data['gkpositioning'] = this.gkpositioning;
    data['gkreflexes'] = this.gkreflexes;
    data['headingaccuracy'] = this.headingaccuracy;
    data['interceptions'] = this.interceptions;
    data['jumping'] = this.jumping;
    data['longpassing'] = this.longpassing;
    data['longshots'] = this.longshots;
    data['marking'] = this.marking;
    data['penalties'] = this.penalties;
    data['positioning'] = this.positioning;
    data['potential'] = this.potential;
    data['reactions'] = this.reactions;
    data['shortpassing'] = this.shortpassing;
    data['shotpower'] = this.shotpower;
    data['slidingtackle'] = this.slidingtackle;
    data['sprintspeed'] = this.sprintspeed;
    data['standingtackle'] = this.standingtackle;
    data['stamina'] = this.stamina;
    data['strength'] = this.strength;
    data['vision'] = this.vision;
    data['volleys'] = this.volleys;
    data['weakFoot'] = this.weakFoot;
    data['traits'] = this.traits;
    data['specialities'] = this.specialities;
    data['atkWorkRate'] = this.atkWorkRate;
    data['defWorkRate'] = this.defWorkRate;
    data['playerType'] = this.playerType;
    if (this.attributes != null) {
      data['attributes'] = this.attributes.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['rarityId'] = this.rarityId;
    data['isIcon'] = this.isIcon;
    data['quality'] = this.quality;
    data['isGK'] = this.isGK;
    data['positionFull'] = this.positionFull;
    data['isSpecialType'] = this.isSpecialType;
    data['contracts'] = this.contracts;
    data['fitness'] = this.fitness;
    data['rawAttributeChemistryBonus'] = this.rawAttributeChemistryBonus;
    data['isLoan'] = this.isLoan;
    data['squadPosition'] = this.squadPosition;
    if (this.iconAttributes != null) {
      data['iconAttributes'] = this.iconAttributes.toJson();
    }
    data['itemType'] = this.itemType;
    data['discardValue'] = this.discardValue;
    data['id'] = this.id;
    data['modelName'] = this.modelName;
    data['baseId'] = this.baseId;
    data['rating'] = this.rating;
    return data;
  }
}

class League {
  LeagueImageUrls imageUrls;
  String abbrName;
  int id;
  Null imgUrl;
  String name;

  League({this.imageUrls, this.abbrName, this.id, this.imgUrl, this.name});

  League.fromJson(Map<String, dynamic> json) {
    imageUrls = json['imageUrls'] != null
        ? new LeagueImageUrls.fromJson(json['imageUrls'])
        : null;
    abbrName = json['abbrName'];
    id = json['id'];
    imgUrl = json['imgUrl'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.imageUrls != null) {
      data['imageUrls'] = this.imageUrls.toJson();
    }
    data['abbrName'] = this.abbrName;
    data['id'] = this.id;
    data['imgUrl'] = this.imgUrl;
    data['name'] = this.name;
    return data;
  }
}

class LeagueImageUrls {
  String dark;
  String light;

  LeagueImageUrls({this.dark, this.light});

  LeagueImageUrls.fromJson(Map<String, dynamic> json) {
    dark = json['dark'];
    light = json['light'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dark'] = this.dark;
    data['light'] = this.light;
    return data;
  }
}

class Nation {
  NationImageUrls imageUrls;
  String abbrName;
  int id;
  Null imgUrl;
  String name;

  Nation({this.imageUrls, this.abbrName, this.id, this.imgUrl, this.name});

  Nation.fromJson(Map<String, dynamic> json) {
    imageUrls = json['imageUrls'] != null
        ? new NationImageUrls.fromJson(json['imageUrls'])
        : null;
    abbrName = json['abbrName'];
    id = json['id'];
    imgUrl = json['imgUrl'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.imageUrls != null) {
      data['imageUrls'] = this.imageUrls.toJson();
    }
    data['abbrName'] = this.abbrName;
    data['id'] = this.id;
    data['imgUrl'] = this.imgUrl;
    data['name'] = this.name;
    return data;
  }
}

class NationImageUrls {
  String small;
  String medium;
  String large;

  NationImageUrls({this.small, this.medium, this.large});

  NationImageUrls.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['large'] = this.large;
    return data;
  }
}

class Club {
  ImageUrls imageUrls;
  String abbrName;
  int id;
  Null imgUrl;
  String name;

  Club({this.imageUrls, this.abbrName, this.id, this.imgUrl, this.name});

  Club.fromJson(Map<String, dynamic> json) {
    imageUrls = json['imageUrls'] != null
        ? new ImageUrls.fromJson(json['imageUrls'])
        : null;
    abbrName = json['abbrName'];
    id = json['id'];
    imgUrl = json['imgUrl'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.imageUrls != null) {
      data['imageUrls'] = this.imageUrls.toJson();
    }
    data['abbrName'] = this.abbrName;
    data['id'] = this.id;
    data['imgUrl'] = this.imgUrl;
    data['name'] = this.name;
    return data;
  }
}

class ImageUrls {
  Dark dark;
  Light light;

  ImageUrls({this.dark, this.light});

  ImageUrls.fromJson(Map<String, dynamic> json) {
    dark = json['dark'] != null ? new Dark.fromJson(json['dark']) : null;
    light = json['light'] != null ? new Light.fromJson(json['light']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dark != null) {
      data['dark'] = this.dark.toJson();
    }
    if (this.light != null) {
      data['light'] = this.light.toJson();
    }
    return data;
  }
}

class Dark {
  String small;
  String medium;
  String large;

  Dark({this.small, this.medium, this.large});

  Dark.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['large'] = this.large;
    return data;
  }
}

class Light {
  String small;
  String medium;
  String large;

  Light({this.small, this.medium, this.large});

  Light.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['large'] = this.large;
    return data;
  }
}

class Headshot {
  String imgUrl;
  bool isDynamicPortrait;

  Headshot({this.imgUrl, this.isDynamicPortrait});

  Headshot.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    isDynamicPortrait = json['isDynamicPortrait'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['isDynamicPortrait'] = this.isDynamicPortrait;
    return data;
  }
}

class Attributes {
  String name;
  int value;
  List<int> chemistryBonus;

  Attributes({this.name, this.value, this.chemistryBonus});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
    chemistryBonus = json['chemistryBonus'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['value'] = this.value;
    data['chemistryBonus'] = this.chemistryBonus;
    return data;
  }
}

class IconAttributes {
  List<ClubTeamStats> clubTeamStats;
  List<NationalTeamStats> nationalTeamStats;
  String iconText;

  IconAttributes({this.clubTeamStats, this.nationalTeamStats, this.iconText});

  IconAttributes.fromJson(Map<String, dynamic> json) {
    if (json['clubTeamStats'] != null) {
      clubTeamStats = new List<ClubTeamStats>();
      json['clubTeamStats'].forEach((v) {
        clubTeamStats.add(new ClubTeamStats.fromJson(v));
      });
    }
    if (json['nationalTeamStats'] != null) {
      nationalTeamStats = new List<NationalTeamStats>();
      json['nationalTeamStats'].forEach((v) {
        nationalTeamStats.add(new NationalTeamStats.fromJson(v));
      });
    }
    iconText = json['iconText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.clubTeamStats != null) {
      data['clubTeamStats'] =
          this.clubTeamStats.map((v) => v.toJson()).toList();
    }
    if (this.nationalTeamStats != null) {
      data['nationalTeamStats'] =
          this.nationalTeamStats.map((v) => v.toJson()).toList();
    }
    data['iconText'] = this.iconText;
    return data;
  }
}

class ClubTeamStats {
  int years;
  int clubId;
  String clubName;
  int appearances;
  int goals;

  ClubTeamStats(
      {this.years, this.clubId, this.clubName, this.appearances, this.goals});

  ClubTeamStats.fromJson(Map<String, dynamic> json) {
    years = json['years'];
    clubId = json['clubId'];
    clubName = json['clubName'];
    appearances = json['appearances'];
    goals = json['goals'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['years'] = this.years;
    data['clubId'] = this.clubId;
    data['clubName'] = this.clubName;
    data['appearances'] = this.appearances;
    data['goals'] = this.goals;
    return data;
  }
}

class NationalTeamStats {
  int years;
  int clubId;
  String clubName;
  int appearances;
  int goals;

  NationalTeamStats(
      {this.years, this.clubId, this.clubName, this.appearances, this.goals});

  NationalTeamStats.fromJson(Map<String, dynamic> json) {
    years = json['years'];
    clubId = json['clubId'];
    clubName = json['clubName'];
    appearances = json['appearances'];
    goals = json['goals'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['years'] = this.years;
    data['clubId'] = this.clubId;
    data['clubName'] = this.clubName;
    data['appearances'] = this.appearances;
    data['goals'] = this.goals;
    return data;
  }
}