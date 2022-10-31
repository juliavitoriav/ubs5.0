//FEITO POR JÚLIA VITÓRIA

class VarUbs {
  late final String nome;
  late final String end;
  late final String bairro;
  late final String cep;
  late final String hora;
  late final String tel;
  late final String urlimage;


  VarUbs({
    required this.nome,
    required this.end,
    required this.bairro,
    required this.cep,
    required this.hora,
    required this.tel,
    required this.urlimage,


  });


  VarUbs.fromJson(Map<String, dynamic> json) {
    nome = json['name'];
    urlimage = json['url_image'];
    end = json['adress'];
    bairro = json['district'];
    cep = json['code'];
    hora = json['hour'];
    tel = json['phone'];
  }

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = nome;
    data['url_image'] = urlimage;
    data['adress'] = end;
    data['district'] = bairro;
    data['code'] = cep;
    data['hour'] = hora;
    data['phone'] = tel;

    return data;
  }
}
