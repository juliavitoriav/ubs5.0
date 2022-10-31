class Phones {
  late final String text;
  late final String number;

  Phones({
    required this.text,
    required this.number,
  });

  Phones.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['number'] = number;
    return data;
  }


}

