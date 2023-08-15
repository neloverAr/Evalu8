import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../modules/Auth/signup/model/user.dart';

class FirebaseUtil {
  static FirebaseUtil shared = FirebaseUtil();

  final db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
//This function registers a new user with auth and then calls the function createUser
  Future<void> registerUser(AppUser user) async {
    //Create the user with auth
    UserCredential result = await auth.createUserWithEmailAndPassword(
        email: (user.email), password: (user.password));
    //Create the user in firestore with the user data
    _addUser(user);
  }
  Future<void> _addUser(AppUser user) {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
      'full_name': user.fullName, // John Doe
      'company': "company", // Stokes and Sons
      'age': "age" // 42
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
