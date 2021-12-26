class Human {
  String name = ""; // todo: sonradan çıkarılacak.
  String surname = "";
  num age = 0;
  List hobbies = [];
  int familyId = 0;
  bool? isCovid;

  Human(String Name, String Surname, int Age) {
    name = Name;
    surname = Surname;
    age = Age;
    isCovid = false;
  }

  @override
  String toString() {
    return name +
        " is a human. His surname is " +
        surname +
        " and he is " +
        age.toString() +
        " years old. Family Id: " +
        familyId.toString() +
        " He is Covid -> " +
        isCovid.toString();
  }

  void setFamilyId(int FamilyId) {
    familyId = FamilyId;
  }

  void setHobbie(List Hobbies) {
    for (var hobby in Hobbies) {
      hobbies.contains(hobby)
          ? print("already added" + hobby.toString())
          : hobbies.add(hobby);
    }
  }
}
