class PlayerModel {
  final String firstName;
  final String lastName;

  int money;

  PlayerModel({this.firstName, this.lastName}) {
    if (this.firstName.toLowerCase() == "gucci" && this.lastName.toLowerCase() == "rao") money = 10000;
    else money = 0;
  }
}