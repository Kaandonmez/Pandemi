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

    makeFamilyCovid(human.familyId); // todo:
  }

  void makeFamilyCovid(int familyid) {
    //* tek bir aileyi covid yap.
    families[familyid].isCovid = true;
    makeHumansCovid(families[familyid].members);
  }

  void getRidOfHumansCovid(List Members) {
    //* parametre olarak human dizisi alır. Hepsini covidden kurtarır.
    int counter = 0;
    while (counter < Members.length) {
      Members[counter].isCovid = false;
      counter++;
    }
  }

  //todo: belki daha sonra ortama hobiye ve virüs tipine göre covid yayılması aşağıdaki prototipe yazılabilir. (mi?)

}
