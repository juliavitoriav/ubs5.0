
//FEITO POR AMANDA LIMA

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pmobp/Banco/user_dao.dart';
import 'package:pmobp/Domain/user.dart';
import 'package:pmobp/Pages/HomePage.dart';

class PrincipalLogin extends StatefulWidget {
  const PrincipalLogin({Key? key}) : super(key: key);
  _PrincipalLoginState createState() => _PrincipalLoginState();
}

class _PrincipalLoginState extends State<PrincipalLogin> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF05A4AB),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.account_circle,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        Container(
                          child: const Center(
                              child: Text('Login',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      color: Color(0xFFFFFBF0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Arimo'))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          color: Color(0xFFFFFBF0),
                          child: TextFormField(
                            controller: userController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Campo usuário obrigatório';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                labelText: 'USUÁRIO',
                                labelStyle: TextStyle(color: Color(0xFF46707B)),
                                border: OutlineInputBorder(),
                                prefixIcon: const Icon(Icons.person),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          color: Color(0xFFFFFBF0),
                          child: TextFormField(
                            controller: emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Campo email obrigatório';
                                }

                                return null;
                              },
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                labelText: 'EMAIL',
                                labelStyle: TextStyle(color: Color(0xFF46707B)),
                                border: const OutlineInputBorder(),
                                prefixIcon: const Icon(Icons.email),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          color: Color(0xFFFFFBF0),
                          child: TextFormField(
                            controller: passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Campo senha obrigatório';
                                } else if (value.length < 5) {
                                  return 'É obrigatório que a senha possua mais que cinso caracteres';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'SENHA',
                                labelStyle: TextStyle(color: Color(0xFF46707B)),
                                border: OutlineInputBorder(),
                                prefixIcon: const Icon(Icons.lock),
                              )),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        ElevatedButton(
                          onPressed: onPressed,
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xfff4f2f3)),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                'CONFIRMAR',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF46707B)),
                              )),
                        ),
                      ],
                    )),
              ),
            )));
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String userD = userController.text;
      String emailD = emailController.text;
      String passwordD = passwordController.text;
      bool isAuth = await UserDao().autenticar(user: User(username: userD, email: emailD, password: passwordD));

      if (isAuth) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      } else {
        print("error login");
      }
    } else {
      print("Erro na validação");
    }
  }
}
