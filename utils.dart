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
  var turkeyPopulationPyramide = [23.942, 67.077, 8.981];
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
      if (counter < populationPyramide[0] * 1000) {
        int min = 0;
        int max = 14;
        humans.add(new Human("Young" + counter.toString(), counter.toString(),
            min + rnd.nextInt(max - min)));
      } else if (counter < populationPyramide[1] * 1000) {
        int min = 15;
        int max = 64;
        humans.add(new Human("Middle" + counter.toString(), counter.toString(),
            min + rnd.nextInt(max - min)));
      } else {
        int min = 65;
        int max = 100;
        humans.add(new Human("Old" + counter.toString(), counter.toString(),
            min + rnd.nextInt(max - min)));
      }
      counter++;
    }
    /*for(int i = 0; i<100;i++){
      print(humans[rnd.nextInt(100000)].toString());
    }*/
  }

  void createFamilies() {
    var families = new Families("1", [humans[1], humans[2], humans[2]]);
    print(families.toString());
  }

  //branch test
}
