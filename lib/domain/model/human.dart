import 'package:pandemic/domain/model/activity.dart';
import 'package:pandemic/utils/config.dart';

class Human {
  String name = ""; // todo: sonradan çıkarılacak.
  String surname = "";
  num age = 0;
  List<Activities> _activities = [];
  int familyId = 0;
  bool isCovid = false;
  num health = 0; // ! hastalık sınıfı etki edecek dikkat!
  bool? isVaccinated; //! diğer kodda daha farklı tipteydi dikkat.
  //bool isGetOverCorona = false;
  int antibody = 0;
  num? satisfaction;
  //int memberType = 0; //? 0'sa çocuk 1 se yetişkin 2 ise yaşlı
  bool isAlive = true;
  double infectionRate = 0.0;
  double sensitivity = 0.0;

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
    if (age < 5) {
      health = 95 + rnd.nextInt(6);
      satisfaction = null;
      sensitivity = (7 + rnd.nextInt(4)) / 10;
      setActivities([activities[0]]);
    } else if (age >= 5 && age < 14) {
      health = 95 + rnd.nextInt(6);
      satisfaction = null;
    }
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

  void setActivities(List<Activities> Activities) {
    for (var activity in Activities) {
      if (_activities.contains(activity)) {
        print("already added" + activity.toString());
      } else {
        _activities.add(activity);
        activity.incrementMemberCount();
      }
    }
  }

  List<Activities> getActivities() {
    return _activities;
  }

  void makeDead() {
    //todo
  }
}
