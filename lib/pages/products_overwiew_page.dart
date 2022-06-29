// ignore_for_file: use_key_in_widget_constructors, unused_field, avoid_print

import 'package:flutter/material.dart';
import '../components/product_grid.dart';

// ignore: constant_identifier_names
enum FilterOptions { Favorite, All }

class ProductsOverviewPage extends StatefulWidget {
  const ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showFavorityOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha loja'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favorite) {
                    _showFavorityOnly = true;
                  } else {
                    _showFavorityOnly = false;
                  }
                  print(_showFavorityOnly);
                });
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    const PopupMenuItem(
                      value: FilterOptions.Favorite,
                      child: Text('Somente Favoritos'),
                    ),
                    const PopupMenuItem(
                      value: FilterOptions.All,
                      child: Text('Todos'),
                    ),
                  ])
        ],
      ),
      body: Padding(
        //* Envolvendo o GridView com um padding, para que não fique batendo nas laterais da tela.
        padding: const EdgeInsets.all(10),
        child: ProductGrid(
          showFavorityOnly: _showFavorityOnly,
        ),
      ),
    );
  }
}
