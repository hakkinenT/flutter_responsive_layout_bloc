import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_responsive_layout_bloc/bloc/responsive_bloc.dart';
import 'package:flutter_responsive_layout_bloc/responsive/mobile_app.dart';
import 'package:flutter_responsive_layout_bloc/responsive/web_app.dart';

class ProductCatalogPage extends StatelessWidget {
  const ProductCatalogPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveBloc, ResponsiveState>(
      builder: (context, state) {
        if (state.screen == ResponsiveScreen.web) {
          return const WebApp();
        } else {
          return const MobileApp();
        }
      },
    );
  }
}
