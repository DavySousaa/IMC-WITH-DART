import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Bem vindo a Calculadora de IMC!");

  print("Digite seu nome:");
  var line = stdin.readLineSync(encoding: utf8);
  var nome = line;

  print("Informe seu peso em kg:");
  line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");

  print("Digite sua altura em M:");
  line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line ?? "0");

  double resultado = 0;
  resultado = peso / (altura * altura);

  if (resultado < 16) {
    print("Magreza grave");
  } else if (resultado >= 16 && resultado <= 17) {
    print("Magreza moderada");
  } else if (resultado > 17 && resultado <= 18) {
    print("Magreza leve");
  } else if (resultado > 18 && resultado <= 25) {
    print("Saudável");
  } else if (resultado > 25 && resultado <= 30) {
    print("Sobrepeso");
  } else if (resultado > 30 && resultado <= 35) {
    print("Obesidade 1");
  } else if (resultado > 35 && resultado <= 40) {
    print("Obesidade 2");
  } else if (resultado > 40) {
    print("Obesidade 3");
  }
}
