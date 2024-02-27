import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    _isLoggedIn = true;
    notifyListeners();
  }

  Future<void> logout() async {
    await _auth.signOut();
    _isLoggedIn = false;
    notifyListeners();
  }
}
