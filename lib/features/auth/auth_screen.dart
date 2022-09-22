import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drone_website/common/custom_textbutton.dart';
import 'package:drone_website/common/custom_textfield.dart';
import 'package:drone_website/constants/global_variables.dart';
import 'package:drone_website/constants/utils.dart';
import 'package:drone_website/features/admin/admin_screen.dart';
import 'package:drone_website/features/auth/services/auth_services.dart';
import 'package:drone_website/features/store/responsive/web_store_layout.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/widgets/coming_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName =
      '/auth-screen'; //////////////////////////////awlays register route name
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final AuthService authService = AuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String type = '';

  @override
  void initState() {
    super.initState();
    _checkRole();
  }

  void _checkRole() async {
    User user = firebaseAuth.currentUser!;
    final DocumentSnapshot snap =
        await firestore.collection('users').doc(user.uid).get();

    setState(() {
      type = snap['type'];
    });

    if (type == 'user') {
      navigateNext(WebStoreLayout());
    } else if (type == 'admin') {
      navigateNext(AdminScreen());
    }
  }

  void navigateNext(Widget route) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => route));
  }

  //////////////////////////////////////////////////////////////////
  void signUpUser() async {
    /////////////////////////////////////////we could do evething directly in the ontap function down there from async
    String res = await AuthService().signUpUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );

    if (res != 'success') {
      showSnackBar(context, res.toString());
    } else {
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => const ResponsiveLayout(
      //       mobileScreenLayout: MobileScreenLayout(),
      //       webScreenLayout: WebScreenLayout(),
      //     ),
      //   ),
      // );
      showSnackBar(context, res.toString());
    }
  }

  //////////////////////////////////////////
  void loginUser() async {
    String res = await AuthService().loginUser(
        email: _emailController.text,
        password: _passwordController.text,
        context: context);
    _checkRole();
    if (res == "success") {
      showSnackBar(context, res.toString());
    } else {
      showSnackBar(context, res.toString());
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              // ComingUpScreen()

              SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: MediaQuery.of(context).size.width > webScreenSize
                        ? EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 3)
                        : const EdgeInsets.symmetric(horizontal: 32),
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            ListTile(
                              ///////////////////////////////////////////////////////////
                              tileColor: _auth == Auth.signup
                                  ? Colors.grey.shade900
                                  : Colors.grey.shade900,
                              ///////////////////////////////////////////////////////////
                              title: const Text(
                                'Create Account',
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Radio(
                                activeColor: Colors.blue,
                                value: Auth.signup,
                                groupValue: _auth,
                                onChanged: (Auth? val) {
                                  setState(() {
                                    _auth = val!;
                                  });
                                },
                              ),
                            ),
                            if (_auth == Auth.signup)
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.white,
                                child: Form(
                                  key: _signUpFormKey,
                                  child: Column(children: [
                                    CustomTextField(
                                      controller: _emailController,
                                      hintText: 'Email...',
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    CustomTextField(
                                      controller: _passwordController,
                                      hintText: 'Password...',
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    CustomButton(
                                      onTap: signUpUser,
                                      text: 'Register',
                                      color: Colors.blue,
                                    )
                                  ]),
                                ),
                              ),
                            ListTile(
                              ///////////////////////////////////////////
                              tileColor: _auth == Auth.signin
                                  ? Colors.grey.shade900
                                  : Colors.grey.shade900,
                              //////////////////////////////////////////
                              title: const Text(
                                'Sign-In',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              leading: Radio(
                                activeColor: Colors.blue,
                                value: Auth.signin,
                                groupValue: _auth,
                                onChanged: (Auth? val) {
                                  setState(() {
                                    _auth = val!;
                                  });
                                },
                              ),
                            ),
                            if (_auth == Auth.signin)
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.white,
                                child: Form(
                                  key: _signInFormKey,
                                  child: Column(children: [
                                    CustomTextField(
                                      controller: _emailController,
                                      hintText: 'Email...',
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    CustomTextField(
                                      controller: _passwordController,
                                      hintText: 'Password...',
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    CustomButton(
                                        color: Colors.blue,
                                        text: 'Login',
                                        onTap: loginUser)
                                  ]),
                                ),
                              ),
                            const SizedBox(
                              height: 30,
                            ),
                          ]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const FeaturesWidget(),
                const FooterWidget()
              ],
            ),
          ),
        ));
  }
}
