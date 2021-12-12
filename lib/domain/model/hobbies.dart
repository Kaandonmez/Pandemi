import '../../config.dart';

class Hobbies {
  String name = "";
  double socialDistance = 0.0;
  int memberCount = 0;

  Hobbies(String Name, double SocialDistance) {
    name = Name;
    socialDistance = SocialDistance;
    //memberCount += 1;
    //! hobiler humanlar oluşturulurken ekleniyor ancak hobiler 1 kere create ediliyor memberCount şuan gereksiz.
  }

  int hobbieAmountHuman(Hobbies hobbies) {
    //? parametre olarak aldığı hobiye kaç kişinin sahip olduğu bulunur ve o değer döndürülür.
    int counter = 0;
    int hobbieCounter = 0;
    while (counter < humans.length) {
      if (humans[counter].hobbies[0].toString() == "[" + hobbies.name + "]") {
        hobbieCounter++;
      }

      counter++;
    }

    return hobbieCounter;
  }

  @override
  String toString() {
    //return name + " " + socialDistance.toString() + "...   ";
    return name;
  }
}
