
import 'package:pmobp/Domain/Cards.dart';
import 'package:pmobp/Pages/SecondPage.dart';

//FEITO POR M. CATIELLY

class BD {
  static List<Cards> lista = [
    Cards(
      urlImage: 'lib/assets/images/card1.png',
      text: 'UNIDADES MÉDICAS DE REDE PÚBLICA',
      containerSize: 250,
      right: 1,
      top: 8,
      left: 135,
      bottom: 0,
      nextPage: const SecondPage(),
    ),
    Cards(
      urlImage: 'lib/assets/images/card2.png',
      text: 'UNIDADES MÉDICAS DE REDE PRIVADA',
      isWhiteColor: true,
      containerSize: 200,
      left: 15,
      bottom: 1,
      top: 30,
      right: 205,

      //nextPage: Container(),
    ),
    Cards(
      urlImage: 'lib/assets/images/card3.png',
      text: 'UNIDADES FARMACÊUTICAS',
      isWhiteColor: false,
      containerSize: 200,
      left: 200,
      bottom: 2,
      right: 1,
      top: 80,

      //nextPage: Container(),
    ),
    Cards(
      urlImage: 'lib/assets/images/card4.png',
      text: 'INSTITUIÇÕES ESPECIALIZADAS EM EXAMES CLÍNICOS',
      isWhiteColor: false,
      containerSize: 200,
      left: 6,
      bottom: 2,
      top: 28,
      right: 80,

      //nextPage: Container(),
    ),
    Cards(
      urlImage: 'lib/assets/images/card5.png',
      text: 'INSTRUÇÕES CONTRA COVID-19',
      isWhiteColor: true,
      containerSize: 200,
      left: 180,
      bottom: 5,
      top: 12,
      right: 1,

      //nextPage: Container(),
    ),
  ];

  static Future<List<Cards>> getValues() async {
    await Future.delayed(const Duration(seconds: 5));
    return lista;
  }
}
