import 'package:drone_website/features/auth/services/auth_services.dart';
import 'package:drone_website/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  UserProfile? _user = UserProfile(uid: '', email: '', type: '');
  final AuthService _authMethods = AuthService();

  UserProfile get getUser => _user!;

  // bool get isLoggedIn => _user != null;

  Future<void> refreshUser() async {
    UserProfile user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
