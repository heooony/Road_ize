//If you want to add firebase.dart in your project file,
//You should add the following syntax.
//multiDexEnabled true in defaultConfig in project/app/build.gradle
//implementation 'com.android.support:multidex:1.0.3' in dependencies in project/app/build.gradle

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyFirebase {
  static final auth = FirebaseAuth.instance;
  static final store = FirebaseFirestore.instance;
  static final storage = FirebaseStorage.instance;
  static GoogleSignIn googleSignIn = GoogleSignIn();
  static User currentUser;
  static String email = '';
  static String password = '';
  static String confirmPassword = '';
  static String name = '';
  static String url = '';

  static reset() {
    email = '';
    password = '';
    confirmPassword = '';
    name = '';
    url = '';
  }

  static Future<void> authCreateUser() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      return e;
    }
  }

  static Future<bool> authSignInUser() async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      currentUser = auth.currentUser;
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<String> uploadImageToStorage(file, title) async {
    if (file == null) return null;

    Reference storageReference =
        storage.ref().child("${currentUser.uid}/$title");

    await storageReference.putFile(file);

    String downloadURL = await storageReference.getDownloadURL();
    return downloadURL;
  }

  static Future<bool> getStorage(child, title) async {
    storage.ref().child("${currentUser.uid}/$title");
  }

  static Future<void> setStoreData(String collection, String title, String data,
      String title2, String data2) {
    store
        .collection(collection)
        .doc(data + MyFirebase.currentUser.uid)
        .set({'$title': data, '$title2': data2});
  }

  // static Future<String> gSignIn() async {
  //   final GoogleSignInAccount account = await googleSignIn.signIn();
  //   print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
  //   final GoogleSignInAuthentication googleAuth = await account.authentication;
  //   final AuthCredential credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );
  //   UserCredential authResult = await auth.signInWithCredential(credential);
  //   User user = authResult.user;
  //   assert(!user.isAnonymous);
  //   assert(await user.getIdToken() != null);
  //   currentUser = auth.currentUser;
  //   assert(user.uid == currentUser.uid);
  //
  //   name = user.displayName;
  //   email = user.email;
  //   url = user.photoURL;
  //
  //   return 'Success';
  // }
  //
  // static gSignOut() async {
  //   await auth.signOut();
  //   await googleSignIn.signOut();
  //   name = '';
  //   email = '';
  //   url = '';
  // }
}
