import 'dart:math';

import 'package:pandemic/domain/model/activity.dart';

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
    try {
      makeFamilyCovid(human.familyId); // todo:
    } catch (e) {}
  }

  void makeFamilyCovid(int familyid) {
    int counter = 0;
    while (counter < families[familyid].members.length) {
      families[familyid].members[counter].isCovid = true;
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

  void calculteRisk(Human human, Activities act) {
    act.socialDistance;
    human.infectionRate = 1;
    //! antibody , sensitivity , socialDistance

    1 - human.sensitivity + act.socialDistance;
  }

  //todo: belki daha sonra ortama hobiye ve virüs tipine göre covid yayılması aşağıdaki prototipe yazılabilir. (mi?)

}
