import 'hobbies.dart';
import 'human.dart';
import 'families.dart';
import 'utils.dart';
import 'dart:math';
import 'config.dart';

var rand = new Random();

class Covid {
  //String variantName = "";
  num rFactor = 0;

  Covid(/* String variantname,*/ num rfactor) {
    //variantName = variantname;
    rFactor = rfactor;
  }

  void makeHumanCovid(Human human) {
    human.isCovid = true;
  }

  void makeFamilyCovid(int familyid) {
    families[familyid].isCovid = true;
    int counter = 0;
    while (counter < families[familyid].members.length) {
      families[familyid].members[counter].isCovid = true;
      counter++;
    }
  }

  void makeHumansCovid(List Members) {
    int counter = 0;
    while (counter < Members.length) {
      Members[counter].isCovid = true;
      counter++;
    }
  }

  void getRidOfFamilyCovid(int familyid) {
    families[familyid].isCovid = false;
    int counter = 0;
    while (counter < families[familyid].members.length) {
      families[familyid].members[counter].isCovid = false;
      counter++;
    }
  }

  void getRidOfHumansCovid(List Members) {
    int counter = 0;
    while (counter < Members.length) {
      Members[counter].isCovid = false;
      counter++;
    }
  }

  //void Spread(Covid covid, Hobbies hobbies) {}

  /*void makeFamilyMemberCovidRandomly(int familyid) {
    int count = 0;
    while(count < families[familyid].count){
      if(families[familyid].members[count].isCovid){
        continue;
      }
      else{
        
      }
    }
  }*/
}
