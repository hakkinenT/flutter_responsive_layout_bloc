import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout_bloc/utils/web_configurations.dart';
import 'package:flutter_responsive_layout_bloc/widgets/product_catalog_app_bar.dart';
import 'package:flutter_responsive_layout_bloc/widgets/product_catalog_widget.dart';

class WebApp extends StatelessWidget {
  const WebApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProductCatalogAppBar(
            title: 'Catálogo de Produtos',
            pinned: true,
            fontSize: WebConfigurations.appBarTitleSize,
            fontWeight: WebConfigurations.appBarTitleWeight,
            actions: [
              ActionWebButton(
                onPressed: () {},
                icon: const Icon(Icons.home, color: Colors.black),
                label: 'Home',
                fontWeight: WebConfigurations.appBarActionsTextWeight,
              ),
              ActionWebButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                label: 'Carrinho de compras',
                fontWeight: WebConfigurations.appBarActionsTextWeight,
              ),
            ],
          ),
          ProductCatalogWidget(
              childCount: 20,
              crossAxisCount: WebConfigurations.gridCrossAxisCount,
              mainAxisSpacing: WebConfigurations.gridMainAxisSpacing,
              crossAxisSpacing: WebConfigurations.gridCrossAxisSpacing,
              child: Container(
                color: Colors.blue[200],
              ))
        ],
      ),
    );
  }
}
