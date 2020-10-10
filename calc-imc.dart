import 'dart:io';

main() {
  bool verdadeiro = true;

  while (verdadeiro) {
    print('#### Escolha uma opção: ####');
    print('Digite 1 para Sair.');
    print('Digite 2 para calcular IMC.');
    String texto = stdin.readLineSync();
    if (texto == '1') {
      verdadeiro == false;
      print('Programa finalizado!');
      break;
    } else if (texto == '2') {
      print('Calculando IMC:');
      calcImc();
    } else {
      print('Opção Inválida -- Tente denovo.');
    }
  }
}

calcImc() {
  print('Qual seu peso?');
  String escrevaPeso = stdin.readLineSync();
  double peso = double.parse(escrevaPeso);
  print('Qual a sua altura?');
  String escrevaAltura = stdin.readLineSync();
  double altura = double.parse(escrevaAltura);
  double calculo = formulaCalcImc(peso, altura);
  String imc = calculo.toStringAsFixed(2);
  imprimirImc(calculo, imc);
}

// Função que recebe peso e altura executa a formula e retorna IMC
formulaCalcImc(double peso, double altura) {
  return peso / (altura * altura);
}

// Mostrar na tela o resultado.
imprimirImc(double calculo, String imc) {
  if (calculo < 18.5) {
    print('Seu IMC é ' + imc + ' ======= Menor que 18.5 - Abaixo do peso');
  } else if (calculo >= 18.5 && calculo <= 24.9) {
    print('Seu IMC é ' + imc + ' ======= Entre 18.5 e 24.9 - Peso normal');
  } else if (calculo >= 25.0 && calculo <= 29.9) {
    print('Seu IMC é ' + imc + ' ======= Entre 25.0 e 29.9 - Pré-obesidade ');
  } else if (calculo >= 30.0 && calculo <= 34.9) {
    print(
        'Seu IMC é ' + imc + ' ======= Entre 30.0 e 34.9 - Obesidade Grau 1 ');
  } else if (calculo >= 35.0 && calculo <= 39.9) {
    print(
        'Seu IMC é ' + imc + ' ======= Entre 35.0 e 39.9 - Obesidade Grau 2 ');
  } else if (calculo > 40.0) {
    print('Seu IMC é ' +
        imc +
        ' ======= Acima de 40.0 - Obesidade Grau 3 ==== ');
  }
  ;
}
