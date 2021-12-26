import 'package:pandemic/domain/model/activity.dart';
import 'package:pandemic/domain/model/human.dart';

class Family {
  int id = 0;
  List<Human> members = [];
  List<Activities> activities = [];

  Family(int Id, List Members) {
    id = Id;
    for (int i = 0; i < Members.length; i++) {
      if (members.contains(Members[i]) == false) {
        members.add(Members[i]);
        for (int j = 0; j < Members[i].activities.length; j++) {
          if (activities.contains(Members[i].activities[j]) == false) {
            activities.add(Members[i].activities[j]);
          }
        }
        Members[i].setFamilyId(Id);
      }
    }
  }

  @override
  String toString() {
    return id.toString() +
        " is a " +
        members.length.toString() +
        " person family. Members are " +
        members.toString() +
        " and activities are " +
        activities.toString() +
        "\n ";
  }
}
