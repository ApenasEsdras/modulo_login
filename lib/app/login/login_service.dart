
// Serviço de Autenticação
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    // Implementar lógica de login adicional, como salvar token em SharedPreferences
  }

  Future<void> logout() async {
    await _auth.signOut();
    // Implementar logout adicional, como remover token do SharedPreferences
  }

  Future<bool> isLoggedIn() async {
    final user = _auth.currentUser;
    return user != null;
  }
}