import 'package:drone_website/common/custom_textbutton.dart';
import 'package:drone_website/common/custom_textfield.dart';
import 'package:drone_website/constants/global_variables.dart';
import 'package:drone_website/features/auth/services/auth_services.dart';
import 'package:drone_website/features/website/screens/footer/features.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
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
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

///////////////////////////////////////////////////////////////////
  void signUpUser() {
    authService.signUpUser(
        context: context,
        email: _emailController.text,
        password: _passwordController.text,
        name: _nameController.text);
  }
  ///////////////////////////////////////////////////////////////

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Container(
            height: 70,
            width: 80,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('images/nav.png'))),
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: SingleChildScrollView(
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
                            Container(
                              height: 250,
                              width: 350,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('images/shopping.png'))),
                            ),
                            ListTile(
                              ///////////////////////////////////////////////////////////
                              tileColor: _auth == Auth.signup
                                  ? Colors.grey.shade900
                                  : Colors.grey.shade900,
                              ///////////////////////////////////////////////////////////
                              title: const Text(
                                'Create Account',
                              ),
                              leading: Radio(
                                activeColor: Colors.pink,
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
                                // MediaQuery.of(context).size.width > webScreenSize
                                //     ? EdgeInsets.symmetric(
                                //         horizontal:
                                //             MediaQuery.of(context).size.width / 3)
                                //     : const EdgeInsets.symmetric(horizontal: 32),
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
                                      controller: _nameController,
                                      hintText: 'Name...',
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
                                      onTap: () {
                                        if (_signUpFormKey.currentState!
                                            .validate()) {
                                          signUpUser();
                                        }
                                      },
                                      text: 'Register',
                                      color: Colors.pink,
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
                                ),
                              ),
                              leading: Radio(
                                activeColor: Colors.pink,
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
                                // MediaQuery.of(context).size.width > webScreenSize
                                //     ? EdgeInsets.symmetric(
                                //         horizontal:
                                //             MediaQuery.of(context).size.width / 3)
                                //     : const EdgeInsets.symmetric(horizontal: 32),
                                color: Colors.blue,
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
                                      color: Colors.pink,
                                      text: 'Login',
                                      onTap: () {
                                        if (_signInFormKey.currentState!
                                            .validate()) {
                                          signInUser();
                                        }
                                      },
                                    )
                                  ]),
                                ),
                              ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 100,
                              width: 200,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/socialmedia.png'))),
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
