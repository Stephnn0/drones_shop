import 'package:drone_website/constants/global_variables.dart';
import 'package:flutter/material.dart';

class ResponsiveLayoutWebsite extends StatefulWidget {
  final Widget webWebsiteLayout;
  final Widget mobileWebsiteLayout;

  const ResponsiveLayoutWebsite(
      {Key? key,
      required this.mobileWebsiteLayout,
      required this.webWebsiteLayout})
      : super(key: key);

  @override
  State<ResponsiveLayoutWebsite> createState() =>
      _ResponsiveLayoutWebsiteState();
}

class _ResponsiveLayoutWebsiteState extends State<ResponsiveLayoutWebsite> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > webScreenSize) {
          return widget.webWebsiteLayout;
        }
        return widget.mobileWebsiteLayout;
      },
    );
  }
}
