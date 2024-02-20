import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/');

   @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    final user = FirebaseAuth.instance.currentUser;
    return user != null; // Retorna true se o usuário estiver autenticado
  }
}
