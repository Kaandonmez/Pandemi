import 'activity.dart';

class Environment {
  var activityName = ""; //? Her hobinin kendi ortamı var.
  num envRfactor =
      0; //? Ortam var olan virüsün bulaştırıcılığını arttırıyorsa eğer bu değer ileride faydalı olacak.

  Environment(Activities activities) {
    activityName = activities.name;
  }

  double averageAge(Activities activities) {
    double avgAge = 0;

//todo: buraya ortamın yaş ortalaması hesaplayan algo gelecek.(yaşlıların hobileri ve gençlerin hobileri fark eder mi acaba?)

    return avgAge;
  }

  @override
  String toString() {
    return 'People with $activityName hobby came together. The average age of the environment is ';
  }
}
