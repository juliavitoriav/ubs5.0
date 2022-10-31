import 'package:flutter/material.dart';
import 'package:pmobp/Domain/phones.dart';


//FEITO POR RENATA NERES

class PhoneCard extends StatefulWidget {
  final Phones phone;
  const PhoneCard({key, required this.phone});

  @override
  State<PhoneCard> createState() => _PhoneCardState();
}

class _PhoneCardState extends State<PhoneCard> {
  @override
  Widget build(BuildContext context) {
    return buildContent(widget.phone);
  }

  Widget buildContent(Phones phone) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.call, color: Colors.black, size: 40),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phone.text,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                Text(
                  'DISQUE ${phone.number}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
