import 'package:flutter/material.dart';
import 'package:pmobp/Domain/var_ubs.dart';


//FEITO POR JÚLIA VITORIA

class PagUbs extends StatefulWidget {
  final Color color;
  final VarUbs varUbs;
  final Color cor;

  const PagUbs(
      {Key? key, required this.varUbs, required this.color, required this.cor})
      : super(key: key);

  @override
  _PagUbsState createState() => _PagUbsState();
}

class _PagUbsState extends State<PagUbs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 150,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Expanded(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 8, top: 16, right: 8, bottom: 16),
          child: Row(
            children: [
              // const Placeholder(
              //   fallbackHeight: 100,
              //   fallbackWidth: 85,
              //   color: Colors.grey,
              // ),

              buildImage(),

              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.varUbs.nome,
                    style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                        color: widget.cor),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Endereço: ${widget.varUbs.end},',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: widget.cor),
                  ),
                  Text(
                    'Arapiraca-Al - ${widget.varUbs.bairro}',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: widget.cor),
                  ),
                  Text(
                    widget.varUbs.cep,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: widget.cor),
                  ),
                  Text(
                    'Horas: Aberto ${widget.varUbs.hora} horas',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: widget.cor),
                  ),
                  Text(
                    'Telefone: (82) ${widget.varUbs.tel}',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: widget.cor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildImage() {
    return Container(
        height: 100, width: 100, child: Image.asset(widget.varUbs.urlimage));
  }
}
