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
  questions.add(Questions("Okullarda yuzyuze egitime gecilsin mi ?", 0, [
    [
      1.2, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.6,
      false, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      -0.85,
      0,
      0,
      0.45,
      true,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions("Okullarda uzaktan egitime gecilsin mi ?", 1, [
    [
      -1.2, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      0.7,
      true,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0.9,
      0,
      0,
      -0.35,
      false,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(
      Questions("Kapanma durumu bitirilip normal yasama donulsun mu ?", 2, [
    [
      1.8, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      1.6,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      false,
      resources.close_travel,
      false,
      false
    ], //!evet ise
    [
      -1.4,
      0,
      0,
      -1.8,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      true,
      resources.close_travel,
      true,
      true
    ] //  !hayır ise
  ]));

  questions.add(Questions("Ulkece tam kapanma durumuna gecilsin mi ?", 3, [
    [
      -2.1,
      0,
      0,
      -2.4,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      true,
      resources.close_travel,
      true,
      true
    ], //!evet ise
    [
      1.4, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      1.2,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      false,
      resources.close_travel,
      false,
      false
    ] //  !hayır ise
  ]));

  questions.add(
      Questions("Asilama calismalarinin baslatilmasini istiyor musunuz ?", 4, [
    [
      0, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      15,
      0,
      0.75,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      true,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.3,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      false,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Asilama yapabilmek icin gerekli olan ithalat iznini veriyor musunuz ?",
      4, [
    [
      -2.4, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      1.3,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      true,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0,
      0,
      0,
      -1.1,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      false,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Vergi artirimi ile ekonomik seviye yukariya cekilsin mi ?", 5, [
    [
      1.8, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -2.1,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      true,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0,
      0,
      0,
      -0.3,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      false,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Yabanci ulkelerden dis borc alarak ekonominize katki saglamayi planliyor musunuz?",
      6, [
    [
      0, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.1,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      true,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      -0.25,
      100,
      0.18,
      98,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      false,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Sehirler ve ulkelerarasi yolculuklara sinirlama getirilsin mi ?", 7, [
    [
      -1, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.5,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      true,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      1, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      0.3,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      false,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Sehirler ve ulkelerarasi yolculuklar kontrollu sekilde serbest olsun mu ?",
      8, [
    [
      1.2, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      0.6,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      false,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      -0.7, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.25,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      true,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Spor musabakalarina kisitlama uygulamak amaciyla bir muddet ara verilsin mi ?",
      9, [
    [
      -1.7, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.9,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      true,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0.8,
      0,
      0,
      0.2,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      false,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions
      .add(Questions("Spor musabakalari normal gidisatina donsun mu ?", 10, [
    [
      1.35, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      0.95,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      false,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      -0.9,
      0,
      0,
      -0.65,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      true,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Tip seviyenizi gelistirmeyi dusunuyor musunuz ? \n Cevabiniz evet olursa modelin isleyisi: Ekonomi -> -%1.9 Tip +%2.6",
      11, [
    [
      -1.9, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      2.6,
      0.4,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0,
      0,
      0,
      -0.05,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions
      .add(Questions("Ulkenizde asi uretim calismalarina baslansin mi ?", 12, [
    [
      -1.05, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      1.3,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      true,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0,
      0,
      0,
      -0.05,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      false,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Ulkenizde bu yaz olimpiyatlar yapilmasi planlaniyor, onayliyor musunuz",
      13, [
    [
      18, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      22,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      -5,
      0,
      0,
      -13,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions("Ibadet yerleri halka kapatilsin mi ?", 14, [
    [
      0, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.45,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0,
      0,
      0,
      0.1,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Supermarketlerin calisma saatleri en gec 17.00 olacak sekilde ayarlansin mi ? ",
      15, [
    [
      -0.15, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.1,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      false,
      resources.close_food
    ], //!evet ise
    [
      0.1,
      0,
      0,
      0.05,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      false,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions("Sokaga cikma yasagi getirilsin mi ? ", 16, [
    [
      -0.75, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.5,
      resources
          .close_school, //sırasıyla->>>> school vaci sport sinem trvl shop food
      resources.start_vac,
      true,
      true,
      true,
      true,
      true
    ], //!evet ise
    [
      0.2,
      0,
      0,
      0.15,
      resources.close_school,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Dugun, nisan, kina gibi toplu eglencelere kisitlamalar getirilsin mi ? .",
      17, [
    [
      -0.25, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.15,
      resources.close_school,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0.1,
      0,
      0,
      0.2,
      resources.close_school,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions(
      "Sosyal mesafe ve hijyen kurallarina uymayanlara ve maske takmayanlara idari para cezasi uygulansin mi ? ",
      18, [
    [
      0.15, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      -0.4,
      resources.close_school,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0,
      0,
      0,
      0.1,
      resources.close_school,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));

  questions.add(Questions("Istıfa edecek misiniz ? ", 19, [
    [
      0, // sırasıyla ekonomi , saglik , medical , hoşnutluk
      0,
      0,
      0,
      resources.close_school,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ], //!evet ise
    [
      0,
      0,
      0,
      10,
      resources.close_school,
      resources.start_vac,
      resources.close_sport,
      resources.close_cinema,
      resources.close_travel,
      resources.close_shop,
      resources.close_food
    ] //  !hayır ise
  ]));
}
