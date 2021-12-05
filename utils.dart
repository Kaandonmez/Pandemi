import 'dart:math';
import 'human.dart';
import 'families.dart';
import 'hobbies.dart';
import 'options.dart';

var utils = new Utils();
var options = new Options();
var humans = [];
var families = [];
var populationPyramide = [];
var rnd = new Random();

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
      /**
        * !0-24 -> %42,2
        * !25-39 -> %24,7
        * !40-59 -> %17,8
        * !60-79 -> %13,9
        * !80+ -> %1,4
        */
      if (counter < populationPyramide[4] * 1000) {
        int min = 80;
        int max = 100;
        humans.add(new Human("Old" + counter.toString(), counter.toString(),
            min + rnd.nextInt(max - min)));
      } else if (counter < populationPyramide[3] * 1000) {
        int min = 60;
        int max = 79;
        humans.add(new Human("Middle-old" + counter.toString(),
            counter.toString(), min + rnd.nextInt(max - min)));
      } else if (counter < populationPyramide[2] * 1000) {
        int min = 40;
        int max = 59;
        humans.add(new Human("Middle" + counter.toString(), counter.toString(),
            min + rnd.nextInt(max - min)));
      } else if (counter < populationPyramide[1] * 1000) {
        int min = 25;
        int max = 39;
        humans.add(new Human("Middle-young" + counter.toString(),
            counter.toString(), min + rnd.nextInt(max - min)));
      } else {
        int min = 0;
        int max = 24;
        humans.add(new Human("Young" + counter.toString(), counter.toString(),
            min + rnd.nextInt(max - min)));
      }
      counter++;
    }
    /*for(int i = 0; i<100;i++){
      print(humans[rnd.nextInt(100000)].toString());
    }*/

    /*for (int i = 0; i < 100000; i++) {
    print(humans[i].toString());
  }
  print("\n");
  print(humans.length.toString());
  */
  }

  void createFamilies() {
    var families = new Families("1", [humans[1], humans[2], humans[2]]);
    print(families.toString());
  }
}
