import 'dart:convert';

import 'package:drone_website/constants/error_handling.dart';
import 'package:drone_website/constants/global_variables.dart';
import 'package:drone_website/constants/utils.dart';
import 'package:drone_website/features/responsive/responsive_layout_auth.dart';
import 'package:drone_website/features/store/responsive/web_store_layout.dart';
import 'package:drone_website/models/user.dart';
import 'package:drone_website/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AuthService {
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////signup function
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        email: email,
        password: password,
        address: '',
        type: '',
        token: '',
        //  cart: [],
      );

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context, 'Account Created');
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

///////////////////////////////////////////////////////////////////////////////////////////////////////////signin function
  ///

  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );
      //print(res.body);

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () async {
            //store token in local storage
            SharedPreferences prefs = await SharedPreferences.getInstance();

            // provider to store user details
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);

            await prefs.setString(
                'x-auth-token', jsonDecode(res.body)['token']);

            Navigator.pushNamedAndRemoveUntil(
                context, ResponsiveLayoutStore.routeName, (route) => false);
          });
    } catch (e) {
      //print(e);
      showSnackBar(context, e.toString());
    }
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////get user data function

  void getUserData(
    BuildContext context,
  ) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('x-auth-token');

      if (token == null) {
        prefs.setString('x-auth-token', '');
      }

      var tokenRes = await http
          .post(Uri.parse('$uri/tokenIsValid'), headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        //token is not null now
        'x-auth-token': token!
      });
      var response = jsonDecode(tokenRes.body);

      if (response == true) {
        //get user data
        http.Response userRes = await http.get(Uri.parse('$uri/'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              'x-auth-token': token
            });

        var userProvider = Provider.of<UserProvider>(context, listen: false);
        userProvider.setUser(userRes.body);
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
