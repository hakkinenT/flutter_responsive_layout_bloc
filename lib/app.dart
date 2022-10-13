import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_layout_bloc/bloc/responsive_bloc.dart';
import 'package:flutter_responsive_layout_bloc/page/product_catalog_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 600) {
        BlocProvider.of<ResponsiveBloc>(context).add(ResponsiveMobile());
      } else {
        BlocProvider.of<ResponsiveBloc>(context).add(ResponsiveWeb());
      }
      return const ProductCatalogPage();
    });
  }
}
