import 'dart:io';

main() {
  List<String> produtos = [];

  bool condicao = true;

  while (condicao) {
    print('### LISTA DE COMPRA ###\n Digite os produtos: \n');
    String text = stdin.readLineSync();
    if (text == '1') {
      print('Programa finalizado!');
      condicao = false;
    } else if (text == '2') {
      print('$produtos\n');
    } else if (text == '3') {
      print('Qual item você quer remover?');
      String remover = stdin.readLineSync();
      produtos.remove(remover);
    } else {
      produtos.add(text);
      print(
          '\n### Digite 1 para SAIR! ### \n### Digite 2 para ver a LISTA \n### Para REMOVER Item da lista digite 3\n');
    }
  }
}
