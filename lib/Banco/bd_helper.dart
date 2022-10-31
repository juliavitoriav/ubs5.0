import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



class DBHelper {
  initDB() async {
    String databasesPath = await getDatabasesPath();
    String databaseName = join(databasesPath, 'pacotes9.db');
    var db = await openDatabase(
      databaseName,
      version: 1,
      onCreate: onCreate,
    );

    print("BANCO DE DADOS: " + databaseName);
    return db;
  }

  onCreate(Database db, int version) async {

    /// TABELA
    ///
    String sql =
        'CREATE TABLE package (id INTEGER PRIMARY KEY, text varchar(100), top double, bottom double, left double, right double, containerSize double, url_image varchar(100), is_white int, next_page int);';
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right, containerSize, url_image, is_white, next_page) VALUES (1, 'UNIDADES MÉDICAS DE REDE PÚBLICA', 8,  0.0, 135, 1, 250, 'assets/images/card1.png', 0, 0);";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right,containerSize, url_image, is_white, next_page) VALUES (2, 'UNIDADES MÉDICAS DE REDE PRIVADA', 30,  1,  15, 205, 200,'assets/images/card2.png', 1, 1);";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right,containerSize, url_image, is_white, next_page) VALUES (3, 'UNIDADES FARMACÊUTICAS', 80,  2,  200, 1, 200, 'assets/images/card3.png', 0, 2);";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right,containerSize, url_image, is_white, next_page) VALUES (4, 'INSTITUIÇÕES ESPECIALIZADAS EM EXAMES CLÍNICOS',28, 2,  180, 1, 200, 'assets/images/card4.png', 0, 3);";
    await db.execute(sql);

    sql =
        "INSERT INTO package (id, text, top, bottom, left, right,containerSize, url_image, is_white, next_page) VALUES (5, 'INSTRUÇÕES CONTRA COVID-19', 12, 5,  260, 1,200,'assets/images/card5.png', 0, 4);";
    await db.execute(sql);

    /// TABELA
    ///
    String sqlPhone =
        'CREATE TABLE package2 (id INTEGER PRIMARY KEY, text varchar(100), number varchar(100));';
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (1, 'Direitos Humanos', '100');";
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (2, 'Centro de Velorização a Vida', '180');";
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (3, 'Disque Denúncia', '181');";
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (4, 'Polícia Militar', '190');";
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (5, 'Ambulância Pública (SAMU)', '192');";
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (6, 'Corpo de Bombeiros', '193');";
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (7, 'Polícia Civil', '197');";
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (8, 'Polícia Rodoviária Estadual', '198');";
    await db.execute(sqlPhone);

    sqlPhone =
        "INSERT INTO package2 (id, text, number) VALUES (9, 'Defesa Civil', '199');";
    await db.execute(sqlPhone);


    /// TABELA
    ///
    String sqlUbs = 'CREATE TABLE package3 (id INTEGER PRIMARY KEY, adress varchar(100), district varchar(100), code varchar(100), hour varchar(100),phone varchar(100), name varchar(100), url_image varchar(100) );';
    await db.execute(sqlUbs);


    sqlUbs =
    "INSERT INTO package3 (id, adress, district, code, hour, phone, name, url_image) VALUES (1, 'R. São Francisco, 154', 'Centro',  '57300-080', '24', '3522-1622', 'Hospital Regional de Arapiraca',  'assets/images/hospital2.png');";
    await db.execute(sqlUbs);

    sqlUbs =
    "INSERT INTO package3 (id, adress, district, code, hour, phone, name, url_image) VALUES (2, 'R. Fernandes Lima, 312', 'Centro',  '57300-070',  '24', '3522-1688','Nossa Senhora de Fátima','assets/images/hospital1.png');";
    await db.execute(sqlUbs);

    sqlUbs =
    "INSERT INTO package3 (id, adress, district, code, hour, phone, name, url_image) VALUES (3, 'Al-220, km 5', 'Sen. Arnon de Melo',  '57315-745',  '24', '3539-8634',  'Hospita de Emergência do Agreste', 'assets/images/hospital2.png');";
    await db.execute(sqlUbs);

    sqlUbs =
    "INSERT INTO package3 (id, adress, district, code, hour, phone, name, url_image) VALUES (4, 'Al-220, km 4', 'Sen. Arnon de Melo', '57515-745',  '24', '3521-4781', 'Hospital Chama',  'assets/images/hospital1.png');";
    await db.execute(sqlUbs);

    sqlUbs =
    "INSERT INTO package3 (id, adress, district, code, hour, phone, name, url_image) VALUES (5, 'R. José Alexandre, 60',  'Baixão',  '57305-400', '08:00 às 18:00','99656-0928', 'Hospital São Lucas', 'assets/images/hospital2.png');";
    await db.execute(sqlUbs);

    /// TABELA

    String sqlUser =
        'CREATE TABLE package4 (id INTEGER PRIMARY KEY, head varchar(100), user varchar(100), email varchar(100), password varchar(100));';
    await db.execute(sqlUser);

    sqlUser =
        "INSERT INTO package4 (id, head, user, email, password) VALUES (1, 'Login', 'Maria', 'M.paula_123@gmail.com', '12345678');";
    await db.execute(sqlUser);
    sqlUser =
        "INSERT INTO package4 (id, head, user, email, password) VALUES (2, 'Login', 'Mary', 'Mary12@gmail.com', '12020506');";
    await db.execute(sqlUser);

    sqlUser =
        "INSERT INTO package4 (id, head, user, email, password) VALUES (3, 'Login', 'Mariana', 'Mariana23@gmail.com', '23261221');";
    await db.execute(sqlUser);

    String sqlLogin =
        'CREATE TABLE package5 (id INTEGER PRIMARY KEY, head varchar(100), username varchar(100), email varchar(100), password varchar(100));';
    await db.execute(sqlLogin);

    sqlLogin =
    "INSERT INTO package5 (id, head, username, email, password) VALUES (1, 'Login', 'Amanda', 'asl13@aluno.ifal.edu.br', '4m4nd4');";
    await db.execute(sqlLogin);
    sqlLogin =
    "INSERT INTO package5 (id, head, username, email, password) VALUES (2, 'Login', 'Julia', 'julia@aluno.ifal.edu.br', 'ju02');";
    await db.execute(sqlLogin);

    sqlLogin =
    "INSERT INTO package5 (id, head, username, email, password) VALUES (3, 'Login', 'Amanda', 'asma@aluno.ifal.edu.br', 'allana78');";
    await db.execute(sqlLogin);

    sqlLogin =
    "CREATE TABLE user (username varchar(100) PRIMARY KEY, email, password varchar(100))";
    await db.execute(sqlLogin);

    sqlLogin =
    "INSERT INTO user (username, email, password) VALUES ('joao@gmail.com', 'jv2gmail.com', '123456')";
    await db.execute(sqlLogin);
  }
}

  

