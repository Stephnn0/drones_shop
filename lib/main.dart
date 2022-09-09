import 'package:drone_website/constants/colors.dart';
import 'package:drone_website/features/admin/admin_screen.dart';
import 'package:drone_website/features/auth/services/auth_services.dart';
import 'package:drone_website/features/responsive/responsive_layout_auth.dart';
import 'package:drone_website/features/responsive/responsive_layout_website.dart';
import 'package:drone_website/features/store/responsive/mobile_store_layout.dart';
import 'package:drone_website/features/store/responsive/web_store_layout.dart';
import 'package:drone_website/features/website/responsive/mobile_website_layout.dart';
import 'package:drone_website/features/website/responsive/web_website_layout.dart';
import 'package:drone_website/provider/user_provider.dart';
import 'package:drone_website/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.averiaSansLibreTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Pitajaya Drones',
        onGenerateRoute: (settings) => generateRoute(settings),

        // theme: //ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),

        home: Provider.of<UserProvider>(context).user.token.isNotEmpty
            ? Provider.of<UserProvider>(context).user.type == 'user'
                ? ResponsiveLayoutStore(
                    mobileStoreLayout: MobileStoreLayout(),
                    webStoreLayout:
                        WebStoreLayout()) // the is auth so the website with some special privilages  (order)
                : AdminScreen() //admin is admin
            : ResponsiveLayoutWebsite(
                mobileWebsiteLayout: MobileWebsiteLayout(),
                webWebsiteLayout: WebWebsiteLayout()));
  }
}
