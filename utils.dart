import 'dart:math';
import 'covid.dart';
import 'human.dart';
import 'families.dart';
import 'hobbies.dart';
import 'options.dart';
import 'config.dart';

class Utils {
  var newZealandPopulationPyramide = [19.431, 64.201, 16.368];

// todo: liste yeni aralıklarla düzenlenecek!
  //var turkeyPopulationPyramide = [23.942,67.077,8.981];
  var turkeyPopulationPyramide = [42.2, 24.7, 17.8, 13.9, 1.4];
  //*genç nüfustan yaşlı nüfusa doğru sıralanmış (sadece türkiye için)

/**
 * !0-24 -> %42,2
 * !25-39 -> %24,7
 * !40-59 -> %17,8
 * !60-79 -> %13,9
 * !80+ -> %1,4
 */

  var indiaPopulationPyramide = [26.161, 67.265, 6.578];

  List getNewZealandPopulationPyramide() {
    print("Selected population: New Zealand");
    return newZealandPopulationPyramide;
  }

  List getTurkeyPopulationPyramide() {
    print("Selected population: Turkey");
    return turkeyPopulationPyramide;
  }

  List getIndiaPopulationPyramide() {
    print("Selected population: India");
    return indiaPopulationPyramide;
  }

  int getRandomAge(int min, int max) {
    return min + rnd.nextInt(max - min);
  }

  void createHumans(String selectedDifficulty) {
    switch (selectedDifficulty) {
      case "easy":
        {
          populationPyramide = utils.getNewZealandPopulationPyramide();
          break;
        }
      case "medium":
        {
          populationPyramide = utils.getTurkeyPopulationPyramide();
          break;
        }
      case "hard":
        {
          populationPyramide = utils.getIndiaPopulationPyramide();
        }
    }
    int counter = 0;
    while (counter < 100000) {
      //! toplam oluşturulacak insan sayısı buradan belirtiliyor.
      /**
        * !0-24 -> %42,2
        * !25-39 -> %24,7
        * !40-59 -> %17,8
        * !60-79 -> %13,9
        * !80+ -> %1,4
        */
      if (counter < populationPyramide[4] * 1000) {
        humans.add(new Human("Old" + counter.toString(), counter.toString(),
            getRandomAge(80, 100)));
      } else if (counter < populationPyramide[3] * 1000) {
        humans.add(new Human("Middle-old" + counter.toString(),
            counter.toString(), getRandomAge(60, 79)));
      } else if (counter < populationPyramide[2] * 1000) {
        humans.add(new Human("Middle" + counter.toString(), counter.toString(),
            getRandomAge(40, 59)));
      } else if (counter < populationPyramide[1] * 1000) {
        humans.add(new Human("Middle-young" + counter.toString(),
            counter.toString(), getRandomAge(25, 39)));
      } else {
        humans.add(new Human("Young" + counter.toString(), counter.toString(),
            getRandomAge(0, 24)));
      }

      counter++;
    }
    /*for (int i = 0; i < 100000; i++) {
      print(humans[i].toString());
    }
    print("\n");
    print(humans.length.toString());
    */
    createHobbies(); //!   <---- hobiler burada oluşturuluyor.
  }

  void createFamilies() {
    while (familyCounter < 5) {
      //!  <----- kaç adet aile olşturulacağı burada belirleniyor.
      /**
        * todo: test amaçlı aile oluşturmak 100 tane deneme amaçlı.
        * ! ailelerin %35'i 3 kişilik olsun. (2x yetişkin + 1 çocuk)
        * ! ailelerin %45'i 4 kişilik olsun (2x yetişkin + 2 çocuk)
        * ! ailelerin %20'si 5 kişilik olsun (2x yetişkin + 2 çocuk + 1 yaşlı)
        * todo: 26 yaşındaki birinin 25 yaşındaki çocuğu olabilir daha sonra düzenlenecek
        */
      chance = rnd.nextInt(100);
      if (chance < 21) {
        //? 5 kişilik aile oluşturma
        families.add(Families(familyCounter.toString(), [
          humans[yetiskinMin + rnd.nextInt(yetiskinMax - yetiskinMin)],
          humans[yetiskinMin + rnd.nextInt(yetiskinMax - yetiskinMin)],
          humans[cocukMin + rnd.nextInt(cocukMax - cocukMin)],
          humans[cocukMin + rnd.nextInt(cocukMax - cocukMin)],
          humans[yasliMin + rnd.nextInt(yasliMax - yasliMin)],
          humans[0]
        ]));
      } else if (chance < 56) {
        //? 3 kişilik aile oluşturma
        families.add(Families(familyCounter.toString(), [
          humans[yetiskinMin + rnd.nextInt(yetiskinMax - yetiskinMin)],
          humans[yetiskinMin + rnd.nextInt(yetiskinMax - yetiskinMin)],
          humans[cocukMin + rnd.nextInt(cocukMax - cocukMin)],
          humans[1]
        ]));
      } else if (chance <= 100) {
        //? 4 kişilik aile oluşturma
        families.add(Families(familyCounter.toString(), [
          humans[yetiskinMin + rnd.nextInt(yetiskinMax - yetiskinMin)],
          humans[yetiskinMin + rnd.nextInt(yetiskinMax - yetiskinMin)],
          humans[cocukMin + rnd.nextInt(cocukMax - cocukMin)],
          humans[cocukMin + rnd.nextInt(cocukMax - cocukMin)],
          humans[2]
        ]));
      }

      familyCounter++;
    }

    for (int i = 0; i < 5; i++) {
      print(families[i].toString());
      print("\n");
    }
  }

  void createHobbies() {
    int hobbieCounter = 0;
    hobbies.add(Hobbies("test", rnd.nextDouble()));
    hobbies.add(Hobbies("test2", rnd.nextDouble()));
    hobbies.add(Hobbies("test3", rnd.nextDouble()));
    hobbies.add(Hobbies("test4", rnd.nextDouble()));
    hobbies.add(Hobbies("test5", rnd.nextDouble()));
    hobbies.add(Hobbies("test6", rnd.nextDouble()));
    hobbies.add(Hobbies("test7", rnd.nextDouble()));
    hobbies.add(Hobbies("test8", rnd.nextDouble()));
    while (hobbieCounter < humans.length) {
      humans[hobbieCounter].setHobbie([hobbies[rnd.nextInt(hobbies.length)]]);

      hobbieCounter++;
    }
  }

  void covidSpread() {
    // todo: min 1 kişi kesin hasta olacak human sınıfına boolean isCovid eklenebilir.
    //!done

    // todo: virüs 2 yolla yayılacak, family içinde, ortak hobiye sahip kişilerde.
    // todo: herhangi bir aile bireyinin sahip olduğu X hobisi diğer aile üyeleri tarafından bensenmese de olur. (mu?)
    // todo: yaş ilerledikçe bulaştırıcılığı az hobiler tanımlanabilir.
    // todo: yaşlılar covid'den daha çok etkileniyor. (kronik rahatsızlıkları olanlar göz ardı edildi.)
    covid.add(Covid(0.8));
    covid[0].makeHumanCovid(humans[0]);
    print("\n");
    /** buraları 0. insanı ve 0. aileyi covid yapacak mı diye yazıldı. */
    print(humans[0].isCovid.toString());
    covid[0].makeFamilyCovid(0);
    print(families[0].toString());
    print("\n");
    print("\n");
    int i = 0;
    while (i < hobbies.length) {
      print("There are a total of " +
          hobbies[i]
              .hobbieAmountHuman(hobbies[i])
              .toString() + //* hangi hobiden kaç kişi var dağılımı görmek için yazıldı.
          " people who have -> " +
          hobbies[i].name +
          "  hobby. ");
      i++;
    }

    print("\n");
    print("\n");
  }
}
