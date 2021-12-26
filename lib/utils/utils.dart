import 'config.dart';
import '../domain/model/covid.dart';
import '../domain/model/family.dart';
import '../domain/model/activity.dart';
import '../domain/model/human.dart';
import 'create_questions.dart';

class Utils {
  var newZealandPopulationPyramide = [19.431, 64.201, 16.368];

// todo: liste yeni aralıklarla düzenlenecek!
  //var turkeyPopulationPyramide = [23.942,67.077,8.981];
  var turkeyPopulationPyramide = [42.2, 24.7, 17.8, 13.9, 1.4];
  //*genç nüfustan yaşlı nüfusa doğru sıralanmış (sadece türkiye için)

  /// !0-24 -> %42,2
  /// !25-39 -> %24,7
  /// !40-59 -> %17,8
  /// !60-79 -> %13,9
  /// !80+ -> %1,4
  ///
  ///
  ///
  /// !0-24 -> %42,2  %48 civarı
  /// !25-59 -> %24,7 %35 civarı
  /// !60-100 -> %13,9

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
    createActivities();
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
    while (counter < 200000) {
      //! toplam oluşturulacak insan sayısı buradan belirtiliyor.
      /**
        * !0-24 -> %42,2   0
        * !25-39 -> %24,7  1
        * !40-59 -> %17,8  2
        * !60-79 -> %13,9  3
        * !80+ -> %1,4     4
        */
      if (counter < populationPyramide[4] * 2000) {
        humans.add(Human("Old" + counter.toString(), counter.toString(),
            getRandomAge(80, 100)));
      } else if (counter <
          (populationPyramide[3] + populationPyramide[4]) * 2000) {
        humans.add(Human("Middle-old" + counter.toString(), counter.toString(),
            getRandomAge(60, 79)));
      } else if (counter <
          (populationPyramide[3] +
                  populationPyramide[4] +
                  populationPyramide[2]) *
              2000) {
        humans.add(Human("Middle" + counter.toString(), counter.toString(),
            getRandomAge(40, 59)));
      } else if (counter <
          (populationPyramide[3] +
                  populationPyramide[4] +
                  populationPyramide[2] +
                  populationPyramide[1]) *
              2000) {
        humans.add(Human("Middle-young" + counter.toString(),
            counter.toString(), getRandomAge(25, 39)));
      } else {
        humans.add(Human("Young" + counter.toString(), counter.toString(),
            getRandomAge(0, 24)));
      }
      //print(humans[counter]);
      counter++;
    }
    /*for (int i = 0; i < 100000; i++) {
      print(humans[i].toString());
    }
    print("\n");
    print(humans.length.toString());
    */
    //!   <---- hobiler burada oluşturuluyor.
    int i = 0;
    while (i < activities.length) {
      print("There are a total of " +
          activities[i]
              .memberCount
              .toString() + //* hangi hobiden kaç kişi var dağılımı görmek için yazıldı.
          " people who have -> " +
          activities[i].name +
          "  hobby. ");
      i++;
    }
  }

  void createFamilies() {
    int counter_family = 0;
    int counter_adult = 30600; //13900~24699
    int counter_young = 115600; //24700~99999
    int counter_old = 0; //0~13899
    while (counter_family < 29000) {
      //!  <----- kaç adet aile olşturulacağı burada belirleniyor.

      /**
         * ! 1 kişilik aile %17,9 +++ -> 
         * ! 2 yetişkinli aile %13,6 +++ ->
         * ! 2 yetişkin 1 çocuk %21 +++  ->
         * ! 2 yeiştkin 2 çocuk %21 +++  ->
         * ! 1 yetişkin 1 çocuk %9,7 +++ ->
         * ! 2 yetişkin 1 çocuk 1 yaşlı %14 +++ ->
         * ! 3 kişilik yetişkin ve 1 yaşlı %2,8 ->
         */

      if (counter_family < 6089) {
        //? 2 yetişkin 1 çocuk %21
        families.add(Family(counter_family, [
          humans[counter_adult],
          humans[++counter_adult],
          humans[counter_young]
        ]));
        counter_adult++;
        counter_young++;
      } else if (counter_family < 12179) {
        //? 2 yeiştkin 2 çocuk %21
        families.add(Family(counter_family, [
          humans[counter_adult],
          humans[++counter_adult],
          humans[counter_young],
          humans[++counter_young]
        ]));
        counter_adult++;
        counter_young++;
      } else if (counter_family < 17370) {
        //? 1 kişilik aile %17,9
        families.add(Family(counter_family, [humans[counter_adult]]));
        counter_adult++;
      } else if (counter_family < 21430) {
        //? 2 yetişkin 1 çocuk 1 yaşlı %14
        families.add(Family(counter_family, [
          humans[counter_adult],
          humans[++counter_adult],
          humans[counter_young],
          humans[counter_old]
        ]));
        counter_adult++;
        counter_young++;
        counter_old++;
      } else if (counter_family < 25374) {
        //? 2 yetişkinli aile %13,6
        families.add(Family(
            counter_family, [humans[counter_adult], humans[++counter_adult]]));
        counter_adult++;
      } else if (counter_family < 28187) {
        //? 1 yetişkin 1 çocuk %9,7
        families.add(Family(
            counter_family, [humans[counter_adult], humans[counter_young]]));
        counter_adult++;
        counter_young++;
      } else if (chance < 28999) {
        //? 3 kişilik yetişkin ve 1 yaşlı %2,8
        families.add(Family(counter_family, [
          humans[counter_adult],
          humans[++counter_adult],
          humans[++counter_adult],
          humans[counter_old]
        ]));
        counter_adult++;
        counter_old++;
      }

      counter_family++;
    }

    /*for (var family in families) {
      print(family);
    }*/
  }

  void createActivities() {
    activities.add(Activities("school", 1)); // 0 remote 1 face 2 no
    activities.add(Activities("work", 1));
    activities.add(Activities("travel", 1));
    activities.add(Activities("sports", 1));
    activities.add(Activities("cinema", 1));
    activities.add(Activities("shopping", 1));
    activities.add(Activities("food", 1));

    int hobbieCounter = 0;
    while (hobbieCounter < humans.length) {
      int randomHobbyId = rnd.nextInt(activities.length);
      Activities randomHobbie = activities[randomHobbyId];
      humans[hobbieCounter].setActivities([randomHobbie]);
      randomHobbie.incrementMemberCount();
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
    while (i < activities.length) {
      print("There are a total of " +
          activities[i]
              .memberCount
              .toString() + //* hangi hobiden kaç kişi var dağılımı görmek için yazıldı.
          " people who have -> " +
          activities[i].name +
          "  hobby. ");
      i++;
    }

    print("\n");
    print("\n");
  }

  void createQuestions() {
    create_Questions();
    print(questions[0].ifYes);
    print(questions[0].ifYes[0]);
    print(questions.length.toString());
    families[5].id;
  }
}
