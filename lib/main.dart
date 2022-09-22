import 'package:drone_website/features/admin/admin_screen.dart';
import 'package:drone_website/features/auth/services/auth_services.dart';
import 'package:drone_website/features/responsive/responsive_layout_auth.dart';
import 'package:drone_website/features/responsive/responsive_layout_website.dart';
import 'package:drone_website/features/store/responsive/mobile_store_layout.dart';
import 'package:drone_website/features/store/responsive/web_store_layout.dart';
import 'package:drone_website/features/website/responsive/mobile_website_layout.dart';
import 'package:drone_website/features/website/responsive/web_website_layout.dart';
import 'package:drone_website/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        StreamProvider(
            create: (context) => context.read<AuthService>().authState,
            initialData: null)
      ],
      child: MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.averiaSansLibreTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          debugShowCheckedModeBanner: false,
          title: 'Pitajaya Drone Studios',
          onGenerateRoute: (settings) => generateRoute(settings),
          home: const AuthWrapper()),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null || firebaseUser == 'user') {
      return ResponsiveLayoutStore(
          mobileStoreLayout: MobileStoreLayout(),
          webStoreLayout: WebStoreLayout());
    } else if (firebaseUser == 'admin') {
      return AdminScreen();
    }
    return ResponsiveLayoutWebsite(
        mobileWebsiteLayout: MobileWebsiteLayout(),
        webWebsiteLayout: const WebWebsiteLayout());
  }
}
