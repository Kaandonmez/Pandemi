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

}
