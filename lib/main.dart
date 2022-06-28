import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overwiew_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //!Escuta um ChangeNotifier , o expõe a seus descendentes (child) e reconstrói dependentes sempre que o ->
      //!ChangeNotifier.notifyListeners é chamado.

      create: (_) => ProductList(),

      //!O ChangeNotifierProvierrecebe dois argumentos: create e child. O create é basicamente o que vai mudar e, no nosso caso,
      //!o que muda é uma instância de ProductList. E o child é quem precisa ser avisado quando isso mudar, que no nosso caso é nossa aplicação inteira.

      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.purple,
            ).copyWith(
              secondary: Colors.deepOrange,
            ),
            fontFamily: 'Lato'),
        debugShowCheckedModeBanner: false,
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (context) => const ProductDetailPage()
        },
      ),
    );
  }
}
