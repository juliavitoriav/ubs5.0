

//FEITO POR M.CATIELLY

import 'dart:ffi';

import 'package:flutter/widgets.dart';
import 'package:pmobp/Pages/Lista.dart';
import 'package:pmobp/Pages/LoginPage.dart';
import 'package:pmobp/Pages/PrincipalLogin.dart';
import 'package:pmobp/Pages/PrincipalPage.dart';
import 'package:pmobp/Pages/SecondPage.dart';

class Cards {
  late String urlImage;
  late String text;
  late double? top;
  late double? bottom;
  late double? left;
  late double? right;
  late final bool? isWhiteColor;
  late double containerSize;
  late final Widget? nextPage;

  List pages = const [
    SecondPage(),
    Lista(),
    LoginPage(),
    PrincipalLogin(),
    PrincipalLogin(),
  ];

  Cards({
    required this.urlImage,
    required this.text,
    required this.top,
    required this.bottom,
    required this.left,
    required this.right,
    required this.containerSize,
    this.nextPage,
    this.isWhiteColor = false,
  });

  Cards.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    urlImage = json['url_image'];
    top = json['top'];
    bottom = json['bottom'];
    left = json['left'];
    right = json['right'];
    containerSize = json['containerSize'];
    print(json['is_white']);
    isWhiteColor = json['is_white'] == 1;
    nextPage = pages[json['next_page']];
  }

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['text'] = text;
    data['url_image'] = urlImage;
    data['top'] = top;
    data['bottom'] = bottom;
    data['left'] = left;
    data['right'] = right;
    data['containerSize'] = containerSize;

    return data;
  }


}
