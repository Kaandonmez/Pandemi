class Hobbies {
  String name = "";
  double socialDistance = 0.0;
  int memberCount = 0;

  Hobbies(String Name, double SocialDistance) {
    name = Name;
    socialDistance = SocialDistance;
    memberCount += 1;
  }

  @override
  String toString() {
    return name + " " + socialDistance.toString() + "...   ";
  }
}
