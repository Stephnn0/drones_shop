import 'package:drone_website/features/auth/auth_screen.dart';
import 'package:drone_website/features/responsive/responsive_layout_auth.dart';
import 'package:drone_website/features/store/responsive/mobile_store_layout.dart';
import 'package:drone_website/features/store/responsive/web_store_layout.dart';
import 'package:drone_website/features/website/screens/deals/deals_scree.dart';
import 'package:drone_website/features/website/screens/real_state/gallery_screen.dart';
import 'package:drone_website/features/website/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AuthScreen(),
      );
    case HomeWebsiteScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => HomeWebsiteScreen(),
      );

    case DealsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => DealsScreen(),
      );
    case GalleryScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => GalleryScreen(),
      );

    case ResponsiveLayoutStore.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ResponsiveLayoutStore(
          webStoreLayout: WebStoreLayout(),
          mobileStoreLayout: MobileStoreLayout(),
        ),
      );
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text('Error 404'),
                ),
              ));
  }
}
