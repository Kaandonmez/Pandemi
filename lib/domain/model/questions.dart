//import 'dart:async';

import '../../utils/config.dart';

/**
 * ! her sorunun
 * ? bir soru metni 
 * ? soruya ait benzersiz bir id
 * ? sorunun yani kartın sağa veya sola çekildiği zaman hangi değişkeni ne kadar etkileyeceğini belirten 2 farklı sayı dizisi
 * ! kart sağa veya sola çekildiğinde 2 farklı sonucu olacak demektir.
 */ ///

class Questions {
  var questionString = "";

  int? questionId;

  var ifYes =
      []; //! mesela 4 tane değişken değerimi olsun (sağlık psikolji gibi) ifYes[0.25,-100,-0.18,-98,7]

  var ifNo =
      []; //! mesela 4 tane değişken değerimi olsun (sağlık psikolji gibi) ifNo[-0.25,100,0.18,98,7]

  Questions(var qString, int id, List yesno) {
    questionString = qString;

    questionId = id;

    ifYes = yesno[0];
    ifNo = yesno[1];
  }

  swipeBool(bool YesNo) {
    if (YesNo) {
      swipeYes();
    } else {
      swipeNo();
    }
  }

  swipeYes() {
    // ! ilgili kart yes kararına swipe edildikten sonra bu metot çağırılacak.
    // todo: oyunun kaybedildiğini anlamak için ressources kontrolü timeline içine eklenirse daha mantıklı olacaktır.
    //? burada sadece değerlerin belirli aralıklarda tutulması sağlanacak.
    if (resources.economy_level > 100) {
      resources.economy_level = 100;
    } else if (resources.economy_level < 0) {
      resources.economy_level = 0;
    }
    if (resources.health_level > 100) {
      resources.health_level = 100;
    } else if (resources.health_level < 0) {
      resources.health_level = 0;
    }
    if (resources.medical_level > 100) {
      resources.medical_level = 100;
    } else if (resources.medical_level < 0) {
      resources.medical_level = 0;
    }
    if (resources.satisfaction_level > 100) {
      resources.satisfaction_level = 100;
    } else if (resources.satisfaction_level < 0) {
      resources.satisfaction_level = 0;
    }
    resources.economy_level += ifYes[0];
    resources.health_level += ifYes[1];
    resources.medical_level += ifYes[2];
    resources.satisfaction_level += ifYes[3];
    //sırasıyla->>>> school vaci sport sinem trvl shop food
    resources.close_cinema = ifYes[4];

    resources.start_vac = ifYes[5];
    resources.close_sport = ifYes[6];
    resources.close_cinema = ifYes[7];
    resources.close_travel = ifYes[8];
    resources.close_shop = ifYes[9];
    resources.close_food = ifYes[10];

    if (resources.close_sport) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[3]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[3]);
        i++;
      }
    }

    if (resources.close_cinema) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[4]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[4]);
        i++;
      }
    }

    if (resources.close_shop) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[5]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[5]);
        i++;
      }
    }

    if (resources.close_food) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[6]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[6]);
        i++;
      }
    }

    if (resources.close_travel) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[2]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[2]);
        i++;
      }
    }
  }

  swipeNo() {
    // ! ilgili kart no kararına swipe edildikten sonra bu metot çağırılacak.
    //? burada sadece değerlerin belirli aralıklarda tutulması sağlanacak.
    if (resources.economy_level > 100) {
      resources.economy_level = 100;
    } else if (resources.economy_level < 0) {
      resources.economy_level = 0;
    }
    if (resources.health_level > 100) {
      resources.health_level = 100;
    } else if (resources.health_level < 0) {
      resources.health_level = 0;
    }
    if (resources.medical_level > 100) {
      resources.medical_level = 100;
    } else if (resources.medical_level < 0) {
      resources.medical_level = 0;
    }
    if (resources.satisfaction_level > 100) {
      resources.satisfaction_level = 100;
    } else if (resources.satisfaction_level < 0) {
      resources.satisfaction_level = 0;
    }
    resources.economy_level += ifNo[0];
    resources.health_level += ifNo[1];
    resources.medical_level += ifNo[2];
    resources.satisfaction_level += ifNo[3];
    //sırasıyla->>>> school vaci sport sinem trvl shop food
    resources.close_cinema = ifNo[4];
    resources.start_vac = ifNo[5];
    resources.close_sport = ifNo[6];
    resources.close_cinema = ifNo[7];
    resources.close_travel = ifNo[8];
    resources.close_shop = ifNo[9];
    resources.close_food = ifNo[10];

    if (resources.close_sport) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[3]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[3]);
        i++;
      }
    }

    if (resources.close_cinema) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[4]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[4]);
        i++;
      }
    }

    if (resources.close_shop) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[5]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[5]);
        i++;
      }
    }

    if (resources.close_food) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[6]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[6]);
        i++;
      }
    }

    if (resources.close_travel) {
      int i = 0;
      while (i < humans.length) {
        try {
          humans[i].deleteActivity(activities[2]);
        } catch (Exception) {}
        i++;
      }
    } else {
      int i = 0;
      while (i < humans.length) {
        humans[i].setactByage(activities[2]);
        i++;
      }
    }
  }
}
