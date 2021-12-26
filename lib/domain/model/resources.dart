import 'package:pandemic/utils/config.dart';

class Resources {
  /** 
   * *oyundaki değişken olan değerleri ifade ediyor.
   * ! değerlerin daha sonradan isimleri değiştirilecek.
   * ?ancak başlangıç olması açısından temsili isimler konuldu.
   * todo: bu değerlerin isimlerinin belirtilmesiyle beraber artıp azalma fonksiyonları yazılacak.
   * todo: ayrıca aynı anda birkaç değeri de arttrıp azaltma metotları eklenebilir. 
   * todo: (ancak önce isimleri ve kaç tane değişken olacağı kesinletirilmeli)
   * ? time classı açmasak, her yes veya no swipe edildiğinde x gün arttırsak olur mu?
   */ ///

  double X = 0;

  double Y = 0;

  double Z = 0;

  double T = 0;

  double M = 0;

  double N = 0;

  double P = 0;

  num health_level = 0;
  num satisfaction_level = 0;
  num economy_level = 0;
  num medical_level = 0;

  Resources() {
    if (difficulty == "easy") {
      health_level = 100;
      satisfaction_level = 100;
      economy_level = 90;
      medical_level = 25;
    }
    if (difficulty == "medium") {
      health_level = 80;
      satisfaction_level = 90;
      economy_level = 75;
      medical_level = 20;
    }
    if (difficulty == "hard") {
      health_level = 70;
      satisfaction_level = 75;
      economy_level = 60;
      medical_level = 15;
    }
  }
}
