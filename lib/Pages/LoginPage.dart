import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Pages/HomePage.dart';

//FEITO POR ALLANA ATAIDE

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF05A4AB),
      body: buildBody(),
    );
  }

  buildBody() {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.person, size: 70, color: Colors.white),
                Text(
                  'Perfil Pessoal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 42),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo usuario obrigatório';
                    }
                    return null;
                  },
                  controller: userController,
                  decoration: const InputDecoration(
                      prefixIcon: const Icon(Icons.person, color: Colors.white),
                      border: UnderlineInputBorder(),
                      labelText: 'Usuário',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo e-mail obrigatório';
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: const InputDecoration(
                      prefixIcon: const Icon(Icons.mail, color: Colors.white),
                      border: UnderlineInputBorder(),
                      labelText: 'E-mail',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo senha obrigatório';
                    } else if (value.length < 8) {
                      return 'Senha deve possuir no mínimo 8 digitos';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      prefixIcon: const Icon(Icons.lock, color: Colors.white),
                      border: UnderlineInputBorder(),
                      labelText: 'Senha',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF46707B)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0),
                    child: Text('VALIDAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                    left: 30,
                    right: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: onPressed,
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF46707B)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 20.0),
                          child: Text('ALTERAR INFORMAÇÕES',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: onPressed,
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF46707B)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 62.0),
                          child: Text('EXCLUIR PERFIL',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  onPressed() {
    if (_formKey.currentState!.validate()) {
      String userDigitado = userController.text;
      String passwordDigitado = passwordController.text;
      String emailDigitado = emailController.text;

      String user = "Maria Paula Ferreira dos Santos";
      String email = "M.paula_123@gmail.com";
      String password = "12345678";

      if (user == userDigitado &&
          password == passwordDigitado &&
          email == emailDigitado) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginPage();
            },
          ),
        );
      } else {
        print('Usuário/Senha/e-mail incorretos');
      }
    } else {
      print("Erro na validação");
    }
  }
}
