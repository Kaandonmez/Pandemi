class Activities {
  String name = "";
  int socialDistance = 0;
  int memberCount = 0;

  Activities(String Name, int SocialDistance) {
    name = Name;
    socialDistance = SocialDistance;
    //memberCount += 1;
    //! hobiler humanlar oluşturulurken ekleniyor ancak hobiler 1 kere create ediliyor memberCount şuan gereksiz.
  }

  void incrementMemberCount() {
    memberCount += 1;
  }

  @override
  String toString() {
    //return name + " " + socialDistance.toString() + "...   ";
    return name;
  }
}
