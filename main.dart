import './money_utilitary/currencies.dart';
import 'dart:io';

void main() {
  var currencies = Currencies();
  print('Digite a quantidade de R\$ a ser convertida: ');
  currencies.real = double.parse(stdin.readLineSync()!);
  currencies.getDados();
}
