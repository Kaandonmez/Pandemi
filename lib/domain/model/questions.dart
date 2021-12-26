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
    resources.X += ifYes[0];
    resources.Y += ifYes[1];
    resources.Z += ifYes[2];
    resources.T += ifYes[3];
  }

  swipeNo() {
    // ! ilgili kart no kararına swipe edildikten sonra bu metot çağırılacak.
    resources.X += ifNo[0];
    resources.Y += ifNo[1];
    resources.Z += ifNo[2];
    resources.T += ifNo[3];
  }
}
