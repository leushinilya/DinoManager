class Dino {
  String name;
  String race;
  int level;
  Gender gender;

  Dino(this.name, this.race, this.gender, this.level);
}

enum Gender {
  male("Самец"),
  female("Самка");

  const Gender(this.value);

  final String value;
}
