import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../modules/Auth/signup/model/user.dart';

class FirebaseUtil {
  static FirebaseUtil shared = FirebaseUtil();
  UserCredential? userCredential;

  Future<void> registerUser(AppUser? appUser,
      {required Function() onSuccess,
      required Function(String erroressage) onError}) async {
    try {
      // Register user with email and password
      userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: appUser?.email ?? "",
        password: appUser?.password ?? "",
      );

      print("User registered successfully!");
      onSuccess();
    } catch (error) {
      print("Error registering user: $error");
      onError("Error registering user: $error");
    }
  }
  Future<void> signIn(String emailAddress,String password,{required Function() onSuccess,
  required Function(String erroressage) onError}) async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
      onSuccess();
    } on FirebaseAuthException catch (e) {
      onError(e.code);
    }
  }

  Future<void> addMoreInfoForUser(AppUser? appUser,{required Function() onSuccess,
    required Function(String erroressage) onError}) async {
    // Get the user ID
    String? userId = userCredential?.user?.uid;

    // Store additional user information in Firestore
    await FirebaseFirestore.instance.collection('users').doc(userId).set({
      'fullName': appUser?.fullName ?? "",
      'dob': appUser?.dateOfBirth ?? "",
      'gender': appUser?.gender ?? ""
    }).catchError((error){
      onError(error);
    }).then((value) => onSuccess());
  }
}
