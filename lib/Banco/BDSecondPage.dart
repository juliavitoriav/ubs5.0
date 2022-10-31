

import 'package:pmobp/Domain/var_ubs.dart';

//FEITO POR JÚLIA VITÓRIA

class BDSecondPage {
  static List<VarUbs> lista = [
    VarUbs(
        end: 'R. São Francisco, 154',
        bairro: 'Centro',
        cep: '57300-080',
        hora: '24',
        tel: '3522-1622',
        nome: 'Hospital Regional de Arapiraca',
        urlimage: 'lib/assets/images/hospital2.png'),
    VarUbs(
        end: 'R. Fernandes Lima, 312',
        bairro: 'Centro',
        cep: '57300-070',
        hora: '24',
        tel: '3522-1688',
        nome: 'Nossa Senhora de Fátima',
        urlimage: 'lib/assets/images/hospital1.png'),
    VarUbs(
        end: 'Al-220, km 5',
        bairro: 'Sen. Arnon de Melo',
        cep: '57315-745',
        hora: '24',
        tel: '3539-8634',
        nome: 'Hospita de Emergência do Agreste',
        urlimage: 'lib/assets/images/hospital2.png'),
    VarUbs(
        end: 'Al-220, km 4',
        bairro: 'Sen. Arnon de Melo',
        cep: '57515-745',
        hora: '24',
        tel: '3521-4781',
        nome: 'Hospital Chama',
        urlimage:
            'lib/assets/images/hospital1.png'), //lib/assets/images/hospital1.png
    VarUbs(
        end: 'R. José Alexandre, 60',
        bairro: 'Baixão',
        cep: '57305-400',
        hora: '08:00 às 18:00',
        tel: '99656-0928',
        nome: 'Hospital São Lucas',
        urlimage: 'lib/assets/images/hospital2.png'),
  ];
  static Future<List<VarUbs>> getValues() async {
    await Future.delayed(const Duration(seconds: 6));
    return lista;
  }
}
