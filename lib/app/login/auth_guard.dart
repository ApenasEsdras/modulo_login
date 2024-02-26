import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';
class AuthRouteGuard extends RouteGuard {
  AuthRouteGuard() : super(redirectTo: '/');

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    final SharedPreferences prefs = Modular.get<SharedPreferences>();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    return isLoggedIn;
  }
}
