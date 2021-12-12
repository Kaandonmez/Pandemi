import 'dart:math';

import '../../utils/config.dart';
import 'human.dart';

var rand = Random(); //! daha sonra lazım olabilir diye burada.

class Covid {
  //String variantName = ""; //? Eğer birden fazla virüs varyatı ile çalışılacak ise bu onları ayıretmek için kullanılabilir.
  num rFactor = 0; //! Virüsün bluştırıcılık faktörü.

  Covid(/* String variantname,*/ num rfactor) {
    //variantName = variantname;
    rFactor = rfactor;
  }

  void makeHumanCovid(Human human) {
    //* tek bir insanı covid yap.
    human.isCovid = true;
  }

  void makeFamilyCovid(int familyid) {
    //* tek bir aileyi covid yap.
    families[familyid].isCovid = true;
    int counter = 0;
    while (counter < families[familyid].members.length) {
      families[familyid].members[counter].isCovid = true;
      counter++;
    }
  }

  void makeHumansCovid(List Members) {
    //* parametre olarak human dizisi alır. Hepsini covid yapar.
    int counter = 0;
    while (counter < Members.length) {
      Members[counter].isCovid = true;
      counter++;
    }
  }

  void getRidOfFamilyCovid(int familyid) {
    //* Family id'sini yaz aile covidden kurtulsun :3
    families[familyid].isCovid = false;
    int counter = 0;
    while (counter < families[familyid].members.length) {
      families[familyid].members[counter].isCovid = false;
      counter++;
    }
  }

  void getRidOfHumansCovid(List Members) {
    //* parametre olarak human dizisi alır. Hepsini covidden kurtarır.
    int counter = 0;
    while (counter < Members.length) {
      Members[counter].isCovid = false;
      counter++;
    }
  }

  void getRidOfCovid(Human human) {
    //* tek bir insanı covidden kurtar.
    human.isCovid = false;
  }

  //todo: belki daha sonra ortama hobiye ve virüs tipine göre covid yayılması aşağıdaki prototipe yazılabilir. (mi?)
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
