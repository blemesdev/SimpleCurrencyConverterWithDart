import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Currencies {
  late double real, dolar, convertMoney;

  Currencies({this.dolar = 0, this.real = 0, this.convertMoney = 0});

  void setReal(double? real) {
    this.real = real!;
  }

  get Dolar => dolar;
  get Real => real;

  Future<void> getDados() async {
    var url = Uri.parse('https://api.hgbrasil.com/finance?key=7ea9c19d');
    var response = await http.get(url);
    var data = convert.jsonDecode(response.body) as Map<String, dynamic>;
    dolar = data['results']['currencies']['USD']['buy'];
    print(dolar);
    convertRealtoDolar(dolar);
  }

  void convertRealtoDolar(double? dolar) {
    convertMoney = this.real / this.dolar;
    print(convertMoney);
  }
}
