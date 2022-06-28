// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../components/product_grid.dart';

class ProductsOverviewPage extends StatelessWidget {
  const ProductsOverviewPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha loja'),
        centerTitle: true,
      ),
      body: Padding(
        //* Envolvendo o GridView com um padding, para que não fique batendo nas laterais da tela.
        padding: const EdgeInsets.all(10),
        child: ProductGrid(),
      ),
    );
  }
}
