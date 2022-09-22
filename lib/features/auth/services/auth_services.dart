import 'package:drone_website/constants/global_variables.dart';
import 'package:drone_website/constants/utils.dart';
import 'package:drone_website/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AuthService {
  //final FirebaseAuth _auth;
  //AuthService(this_auth);

  //State persistence

  Stream<User?> get authState => firebaseAuth.authStateChanges();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////signup function
  Future<String> signUpUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    String res = "some error occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        //======================= register user in firebase authentication
        UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);

        //===============================here we add our user model to be able to create the collection with our function below user.toJson
        UserProfile user =
            UserProfile(uid: cred.user!.uid, email: email, type: 'user');
        //======================== add user to firestore database
        await firestore
            .collection('users')
            .doc(cred.user!.uid)
            .set(user.toJson());
        res = "success";
      }
    } on FirebaseAuthException catch (err) {
      showSnackBar(context, err.message!);
      res = err.toString();
    }
    return res;
  }

///////////////////////////////////////////////////////////////////////////////////////////////////////////signin function
  ///

  Future<String> loginUser({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    String res = 'Some error occurred';

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success";
      } else {
        res = 'Please all fields are required!';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////get user data function
  Future<UserProfile> getUserDetails() async {
    User currentUser = firebaseAuth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await firestore.collection('users').doc(currentUser.uid).get();
    return UserProfile.fromSnap(documentSnapshot);
  }
}
