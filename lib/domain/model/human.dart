import 'package:pandemic/domain/model/activity.dart';

class Human {
  String name = ""; // todo: sonradan çıkarılacak.
  String surname = "";
  num age = 0;
  List<Activities> activities = [];
  int familyId = 0;
  bool isCovid = false;
  num health = 0; // ! hastalık sınıfı etki edecek dikkat!
  bool? isVaccinated; //! diğer kodda daha farklı tipteydi dikkat.
  //bool isGetOverCorona = false;
  int antibody = 0;
  num? satisfaction;
  //int memberType = 0; //? 0'sa çocuk 1 se yetişkin 2 ise yaşlı
  bool isAlive = true;
  num infectionRate = 0;
  num socialDistance = 0;

  // infectionRate = InfectionRate;
  // socialDistance = SocialDistance;

  // goToWork = GoToWork;
  // goToSchool = GoToSchool;
  // travel = Travel;
  // sports = Sports;
  // cinema = Cinema;
  // shopping = Shopping;
  // eat_drink = EatDrink;

  // memberType = MemberType;
  // status = Status;
  // hid = Hid;

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

  void setHobbie(List Activities) {
    for (var activity in Activities) {
      activities.contains(activity)
          ? print("already added" + activity.toString())
          : activities.add(activity);
    }
  }

  void makeDead() {
    //todo
  }
}
