import 'dart:io';

main() {
  List<String> produtos = [];

  bool condicao = true;

  while (condicao) {
    print('### LISTA DE COMPRA ###\n Digite os produtos:');
    String text = stdin.readLineSync();
    if (text == '1') {
      print('Programa finalizado!');
      condicao = false;
    } else if (text == '2') {
      for (var i = 0; i < produtos.length; i++) {
        print('ITEM $i - ${produtos[i]}');
      }
    } else if (text == '3') {
      print('Digite o NUMERO do item para remover?');
      String remover = stdin.readLineSync();
      int numRemover = int.parse(remover);
      produtos.removeAt(numRemover);
    } else {
      produtos.add(text);
      print('\x1B[2J\x1B[0;0H'); //Limpa console no DART para melhor aparencia.
      print(
          '### Digite 1 para SAIR! ### \n### Digite 2 para ver a LISTA \n### Digite 3 para REMOVER Item da lista ');
    }
  }
}
