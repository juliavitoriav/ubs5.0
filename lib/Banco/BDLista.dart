

import 'package:pmobp/Domain/phones.dart';

class BD {
  static List<Phones> lista = [
    // Phones(
    //   text: 'Direitos Humanos',
    //   number: 100,
    // ),
    // Phones(
    //   text: 'Centro de Velorização a Vida',
    //   number: 180,
    // ),
    // Phones(
    //   text: 'Disque Denúncia',
    //   number: 181,
    // ),
    // Phones(
    //   text: 'Polícia Militar',
    //   number: 190,
    // ),
    // Phones(
    //   text: 'Ambulância Pública (SAMU)',
    //   number: 192,
    // ),
    // Phones(
    //   text: 'Corpo de Bombeiros',
    //   number: 193,
    // ),
    // Phones(
    //   text: 'Polícia Civil',
    //   number: 197,
    // ),
    // Phones(
    //   text: 'Polícia Rodoviária Estadual',
    //   number: 198,
    // ),
    // Phones(
    //   text: 'Defesa Civil',
    //   number: 199,
    // ),
  ];

  static Future<List<Phones>> getValues() async {
    await Future.delayed(const Duration(seconds: 10));
    return lista;
  }
}
