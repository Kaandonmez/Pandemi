import 'hobbies.dart';

class Human {
  String name = "";
  String surname = "";
  num age = 0;
  List hobbies = [];
  String familyId = "";
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
        familyId +
        " He is Covid -> " +
        isCovid.toString();
  }

  void setFamilyId(String FamilyId) {
    familyId = FamilyId;
  }

  void setHobbie(List Hobbies) {
    Hobbies.forEach((hobby) => hobbies.contains(hobby)
        ? print("already added" + hobby.toString())
        : hobbies.add(hobby));
  }
}
