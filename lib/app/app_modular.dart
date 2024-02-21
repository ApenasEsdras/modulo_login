import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulo_login/app/home/home_module.dart';
import 'package:modulo_login/app/login/auth_guard.dart';
import 'package:modulo_login/app/login/login_module.dart';

import 'login/login_service.dart';


class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => AuthService()),
    Bind((i) => AuthRouteGuard()),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule(), guards: [AuthRouteGuard()]),
  ];
}
