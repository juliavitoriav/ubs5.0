import 'package:flutter/material.dart';
import 'package:pmobp/Domain/Cards.dart';
import 'package:pmobp/Pages/temp_page.dart';

//FEITO POR M.CATIELLY

class CardUnidades extends StatefulWidget {
  final Cards card;
  final Color color;
  final Color cor;

  const CardUnidades({
    Key? key,
    required this.card,
    required this.color,
    required this.cor,
  }) : super(key: key);

  @override
  State<CardUnidades> createState() => _CardUnidadesState();
}

class _CardUnidadesState extends State<CardUnidades> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    //responde ao usuario quando ele clicar em um botão.
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return widget.card.nextPage ?? const TempPage();
            },
          ),
        );
      },
      //stack possibilita sobrepor varios widgets uns aos outros

      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(
              widget.card.urlImage,
              //usando pra dimensionar e posicionar o filho dentro da caixa pai
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
          ),
          //vai ajudar a mexer na posição do widgets que esta dentro do stack

          Positioned(
            //top:widget.top,
            top: widget.card.top,
            right: widget.card.right,
            bottom: widget.card.bottom,
            left: widget.card.left,

            child: SizedBox(
              width: widget.card.containerSize,
              child: Text(
                widget.card.text,
                style: TextStyle(
                  color: widget.card.isWhiteColor!
                      ? Colors.white
                      : const Color(0xFF46707B),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
      //key: buildCard(),
    );
  }
}
