//import 'package:pandemic/utils/config.dart';

import '../domain/model/questions.dart';
import 'config.dart';

///aşağıdaki kalıp createQuestions metodunun içine kopyalanarak
///birden fazla soru oluşturulması için kullanılabilir.

/**

questions.add(Questions(qString, id, yesno));

questions.add(Questions("Soru Stringi Buraya!!", Soruidsi buraya int olarak girilecek, [
    [evet için sayı dizisi], //!evet ise
    [hayır için sayı dizisi]  //  !hayır ise
  ]));



 */ ///

void create_Questions() {
  questions.add(Questions("Bu çok satırlı bir sorudur?", 0, [
    [0.25, -100, -0.18, -98, 7], //!evet ise
    [-0.25, 100, 0.18, 98, 7] //  !hayır ise
  ]));

  questions.add(Questions("okullar kapatılmalı mı başgan?", 1, [
    [0.25, -100, -0.18, -98, 7], //!evet ise
    [-0.25, 100, 0.18, 98, 7] // !hayır ise
  ]));
}
