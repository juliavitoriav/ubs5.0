
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmobp/Banco/cards_dao.dart';
import 'package:pmobp/Domain/phones.dart';
import 'package:pmobp/Widget/card_phone.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFBF0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<Phones>>(
          future: ListaDao().listarTelefones(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Phones> lista = snapshot.data ?? [];

              return ListView(
                children: [
                  buildContainerTitulo(),
                  const SizedBox(height: 16),
                  buildListViewBuilder(lista),
                ],
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  buildContainerTitulo() {
    double titulo = 20;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF05A4AB),
      ),
      child: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF46707B),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Wrap(
          children: [
            Wrap(
              children: [
                Text(
                  'números telefônicos'.toUpperCase(),
                  style: TextStyle(
                    fontSize: titulo,
                    color: const Color(0xFFFFFBF0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Wrap(
              children: [
                const Icon(Icons.call, color: Colors.white, size: 20),
                Text(
                  ' para '.toUpperCase(),
                  style: TextStyle(
                    color: const Color(0xFFFFFBF0),
                    fontSize: titulo,
                  ),
                ),
                Text(
                  'ajuda pública'.toUpperCase(),
                  style: TextStyle(
                    color: const Color(0xFFFFFBF0),
                    fontSize: titulo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        padding: EdgeInsets.all(26.0),
      ),
      padding: EdgeInsets.all(20),
    );
  }

  buildListViewBuilder(List<Phones> phoneList) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: phoneList.length,
      itemBuilder: (context, index) {
        return PhoneCard(
          phone: phoneList[index],
        );
      },
    );
  }
}
