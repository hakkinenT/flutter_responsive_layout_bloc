import 'package:flutter/material.dart';

class ProductCatalogWidget extends StatelessWidget {
  final int? childCount;
  final Color? color;
  final Widget child;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  const ProductCatalogWidget(
      {super.key,
      this.childCount,
      this.color,
      required this.child,
      required this.crossAxisCount,
      required this.mainAxisSpacing,
      required this.crossAxisSpacing});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(childCount: childCount,
              (BuildContext context, int index) {
            return child;
          }),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
          )),
    );
  }
}
