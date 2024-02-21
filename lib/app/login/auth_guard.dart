
// AuthRouteGuard
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulo_login/app/login/login_service.dart';

class AuthRouteGuard extends RouteGuard {
  AuthRouteGuard() : super(redirectTo: '/');

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    final AuthService authService = Modular.get();
    final isLoggedIn = await authService.isLoggedIn();
    return isLoggedIn;
  }
}
