import 'hobbies.dart';

class Environment {
  var hobbieName = ""; //? Her hobinin kendi ortamı var.
  num envRfactor =
      0; //? Ortam var olan virüsün bulaştırıcılığını arttırıyorsa eğer bu değer ileride faydalı olacak.

  Environment(Hobbies hobbies) {
    hobbieName = hobbies.name;
  }

  double averageAge(Hobbies hobbies) {
    double avgAge = 0;

//todo: buraya ortamın yaş ortalaması hesaplayan algo gelecek.(yaşlıların hobileri ve gençlerin hobileri fark eder mi acaba?)

    return avgAge;
  }

  @override
  String toString() {
    return 'People with $hobbieName hobby came together. The average age of the environment is ';
  }
}
