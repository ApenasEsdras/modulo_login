import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulo_login/app/home/home_page.dart';
import 'package:modulo_login/app/login/auth_guard.dart';
import 'package:modulo_login/app/login/login_module.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.module('/', module: LoginModule());
    r.child('/home',
        child: (context) => const HomePage(), guards: [AuthGuard()]);
  }
}
