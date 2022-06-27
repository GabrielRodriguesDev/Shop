import 'package:flutter/material.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductsOverviewPage extends StatelessWidget {
  ProductsOverviewPage({Key? key}) : super(key: key);
  final List<Product> loadedProducts = dummyProducts;
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
        child: GridView.builder(
          itemCount: loadedProducts.length,

          itemBuilder: (context, index) =>
              ProductItem(product: loadedProducts[index]),
          //* itemBuilder => Define como cada registro (index) será exibido em tela.

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //*  SliverGridDelegateWithFixedCrossAxisCount => Cria layouts de grade com um número fixo de blocos no eixo cruzado. (Vertical é o eixo principal de um GridView)

            crossAxisCount: 2,
            //*   crossAxisCount => Define quantos elementos vão aparecer no eixo cruzado (Horizontal).
            childAspectRatio: 3 / 2,
            //*   childAspectRatio => Dimensão de cada elemento que será exposto.
            crossAxisSpacing: 10,
            //*   crossAxisSpacing => Número de pixels que desja que separe um filho do outro no eixo horizontal.
            mainAxisSpacing: 10,
            //*   mainAxisSpacing => Número de pixels que desja que separe um filho do outro no eixo vertical.
          ),
        ),
      ),
    );
  }
}
