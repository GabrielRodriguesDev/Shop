// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //* ClipRRect => Widget que recorta seu filho usando um retângulo arredondado.

      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        //* GridTile => Widget que representa um bloco na GridView.

        child: Image.network(product.imageUrl, fit: BoxFit.cover),
        footer: GridTileBar(
          //* GridTileBar =>  Usado para adicionar um cabeçalho ou rodapé de uma ou duas linhas em um GridTile.

          backgroundColor: Colors.black87,
          leading: IconButton(
            //* GridTileBar => leading => Um widget para ser exibido antes do título.

            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          title: Text(product.title, textAlign: TextAlign.center),
          trailing: IconButton(
            //* GridTileBar => trailing => Um widget para ser exibido após o título.

            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
