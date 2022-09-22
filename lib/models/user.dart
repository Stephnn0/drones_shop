import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  final String email;
  final String uid;
  final String type;

  UserProfile({
    required this.email,
    required this.uid,
    required this.type,
  });

  //methods
  //this method converts everthing to object file to we dont have to write everthing again
  // method to convert a doc snapshot to user model (this is used for get user details in ui)

  static UserProfile fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return UserProfile(
      email: snapshot['email'],
      uid: snapshot['uid'],
      type: snapshot['type'],
    );
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "uid": uid,
        "type": type,
      };
}
