

//FEITO POR M.CATIELLY

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmobp/Pages/Lista.dart';
import 'package:pmobp/Pages/LoginPage.dart';
import 'package:pmobp/Pages/PrincipalLogin.dart';
import 'package:pmobp/Pages/PrincipalPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = const [
    PrincipalPage(),
    Lista(),
    LoginPage(),
    PrincipalLogin(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF05A4AB),
      appBar: AppBar(
        title: const Text('Pesquisar', style: TextStyle(color: Colors.grey)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.search, color: Colors.grey),
          onPressed: () {},
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFF05A4AB),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Ajuda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mais',
          ),
        ],
      ),
    );
  }

  /*buildCard() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder<List<Cards>>(
        future: BD.getValues(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Cards> lista = snapshot.data ?? [];

            return ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return CardUnidades(
                      card: lista[index],
                      color: const Color(0xFFFFFBF0),
                      cor: Colors.black,
                    );
                  } else {
                    return CardUnidades(
                      card: lista[index],
                      color: const Color(0xFF46707B),
                      cor: const Color(0xFFFFFBF0),
                    );
                  }
                });
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }*/
}
