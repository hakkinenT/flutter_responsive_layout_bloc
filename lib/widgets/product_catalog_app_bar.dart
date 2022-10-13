import 'package:flutter/material.dart';

class ProductCatalogAppBar extends StatelessWidget {
  final String title;
  final bool pinned;
  final bool floating;
  final bool snap;
  final double? fontSize;
  final FontWeight? fontWeight;
  final List<Widget>? actions;

  const ProductCatalogAppBar(
      {super.key,
      required this.title,
      this.pinned = false,
      this.floating = false,
      this.snap = false,
      this.fontSize,
      this.fontWeight,
      this.actions});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      floating: floating,
      snap: snap,
      title: Text(title),
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
          color: Colors.black, fontWeight: fontWeight, fontSize: fontSize),
      actions: actions,
    );
  }
}

class ActionWebButton extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final Function()? onPressed;
  final Widget icon;
  final String label;

  const ActionWebButton(
      {super.key,
      this.fontSize,
      this.fontWeight,
      required this.onPressed,
      required this.icon,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: TextButton.icon(
          onPressed: onPressed,
          icon: icon,
          label: Text(label,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: fontWeight,
                  fontSize: fontSize))),
    );
  }
}

class ActionMobileButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget icon;

  const ActionMobileButton(
      {super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}
