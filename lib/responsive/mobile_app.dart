import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout_bloc/utils/mobile_configurations.dart';
import 'package:flutter_responsive_layout_bloc/widgets/product_catalog_app_bar.dart';
import 'package:flutter_responsive_layout_bloc/widgets/product_catalog_widget.dart';

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProductCatalogAppBar(
            title: 'Catálogo de Produtos',
            pinned: true,
            actions: [
              ActionMobileButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    color: Colors.black,
                  )),
              ActionMobileButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart, color: Colors.black))
            ],
          ),
          ProductCatalogWidget(
              childCount: 20,
              crossAxisCount: MobileConfigurations.gridCrossAxisCount,
              mainAxisSpacing: MobileConfigurations.gridMainAxisSpacing,
              crossAxisSpacing: MobileConfigurations.gridCrossAxisSpacing,
              child: Container(
                color: Colors.amber[200],
              ))
        ],
      ),
    );
  }
}
