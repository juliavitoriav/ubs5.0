import 'package:flutter/material.dart';

//FEITO POR M.CATIELLY

class TempPage extends StatelessWidget {
  const TempPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Página Temporária',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
