class Player {
  int id;
  String lastName;
  String firstName;
  int age;
  String image;
  int singlesRank;
  int doublesRank;

  Player(this.id, this.lastName, this.firstName, this.age, this.image,
      this.singlesRank, this.doublesRank);

  factory Player.empty() => Player(0, '', '', 0, '', 0, 0);
}
