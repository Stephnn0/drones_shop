import 'package:drone_website/constants/colors.dart';
import 'package:drone_website/features/admin/admin_screen.dart';
import 'package:drone_website/features/responsive/responsive_layout_auth.dart';
import 'package:drone_website/features/responsive/responsive_layout_website.dart';
import 'package:drone_website/features/store/responsive/mobile_store_layout.dart';
import 'package:drone_website/features/store/responsive/web_store_layout.dart';
import 'package:drone_website/features/website/responsive/mobile_website_layout.dart';
import 'package:drone_website/features/website/responsive/web_website_layout.dart';
import 'package:drone_website/provider/user_provider.dart';
import 'package:drone_website/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pitajaya Drones',
        onGenerateRoute: (settings) => generateRoute(settings),
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: Provider.of<UserProvider>(context).user.token.isNotEmpty
            ? Provider.of<UserProvider>(context).user.type == 'user'
                ? ResponsiveLayoutStore(
                    mobileStoreLayout: MobileStoreLayout(),
                    webStoreLayout:
                        WebStoreLayout()) // the is auth so the website with some special privilages  (order)
                : const AdminScreen() //admin is admin
            : ResponsiveLayoutWebsite(
                mobileWebsiteLayout: MobileWebsiteLayout(),
                webWebsiteLayout: WebWebsiteLayout()));
  }
}
