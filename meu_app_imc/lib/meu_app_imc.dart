import 'dart:io';

import 'package:meu_app_imc/models/pessoa.dart';

void execute(){
   print("Informe o nome:");
  String nome = stdin.readLineSync()!;

  print("Informe o peso:");
  double peso = double.parse(stdin.readLineSync()!);

  print("Informe a altura:");
  double altura = double.parse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(nome, peso, altura);

  try {
    double imc = pessoa.calcularIMC();
    print("O IMC de $nome é: ${imc.toStringAsFixed(2)}");
  } catch (e) {
    print("Erro: ${e.toString()}");
  }
}