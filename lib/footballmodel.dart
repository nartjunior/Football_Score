class FootballMatch {
  //here we will see the different data
  //you will find every thing you need in the doc
  //I'm not going to use every data, just few ones

  Fixture fixture;
  Team home;
  Team away;
  Goal goal;
  FootballMatch(this.fixture, this.home, this.away, this.goal);

  factory FootballMatch.fromJson(Map<String, dynamic> json) {
    return FootballMatch(
        Fixture.fromJson(json['fixture']),
        Team.fromJson(json['teams']['home']),
        Team.fromJson(json['teams']['away']),
        Goal.fromJson(json['goals']));
  }
}

//here we will store the fixture
class Fixture {
  int id;
  String date;
  Status status;
  Fixture(this.id, this.date, this.status);

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(json['id'], json['date'], Status.fromJson(json['status']));
  }
}

class Events {
  int fixture;
  int team;
  int player;
  String type;
  Events(this.fixture, this.team, this.player, this.type);

  factory Events.fromJson(Map<String, dynamic> json) {
    return Events(json['fixture'], json['team'], json['player'], json['type']);
  }
}

//here we will store the Status
class Status {
  int elapsedTime;
  String long;
  Status(this.elapsedTime, this.long);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsed'], json['long']);
  }
}

//here we will store the Team data
class Team {
  int id;
  String name;
  String logoUrl;
  bool? winner;
  Team(this.id, this.name, this.logoUrl, this.winner);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['name'], json['logo'], json['winner']);
  }
}

//here we will store the Goal data
class Goal {
  int home;
  int away;
  Goal(this.home, this.away);

  //Now we will create a factory method to copy the data from
  // the json file
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'] ?? 0, json['away'] ?? 0);
  }
}
