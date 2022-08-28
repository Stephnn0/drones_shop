import 'package:drone_website/constants/global_variables.dart';
import 'package:flutter/material.dart';

class ResponsiveLayoutStore extends StatefulWidget {
  static const String routeName = '/responsivestore';
  final Widget webStoreLayout;
  final Widget mobileStoreLayout;

  const ResponsiveLayoutStore(
      {Key? key, required this.mobileStoreLayout, required this.webStoreLayout})
      : super(key: key);

  @override
  State<ResponsiveLayoutStore> createState() => _ResponsiveLayoutStoreState();
}

class _ResponsiveLayoutStoreState extends State<ResponsiveLayoutStore> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > webScreenSize) {
          return widget.webStoreLayout;
        }
        return widget.mobileStoreLayout;
      },
    );
  }
}
