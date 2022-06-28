// ignore_for_file: prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  //! Uma classe que estende ou usa como mixing o ChangeNotifier pode chamar a notifyListeners() qualquer momento que os dados
  //! dessa classe foram atualizados e você deseja informar um ouvinte sobre essa atualização.
  //! Isso geralmente é feito em um modelo de exibição para notificar a interface do usuário para reconstruir o layout com base
  //! nos novos dados.

  List<Product> _items = dummyProducts;

  List<Product> get items => [
        ..._items
      ]; //! Implementando get que retorna uma cópia da lista e não a referencia.
  //! Se retornarmos a referencia, a lista poderá ser manipulada e esse não é o objetivo.

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners(); //! Notificando os listeners
  }
}
