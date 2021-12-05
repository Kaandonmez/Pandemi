class Human {
  String name = "";
  String surname = "";
  num age = 0;
  List hobbies = [];
  String familyId = "";

  Human(String Name, String Surname, int Age) {
    name = Name;
    surname = Surname;
    age = Age;
  }

  @override
  String toString() {
    return name +
        " is a human. His surname is " +
        surname +
        " and he is " +
        age.toString() +
        " years old. Family Id: " +
        familyId;
  }

  void setFamilyId(String FamilyId) {
    familyId = FamilyId;
  }
}
