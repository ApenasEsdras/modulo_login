import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulo_login/app/login/login_page.dart';

import 'home/home_module.dart';
import 'login/login_service.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => AuthService()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, __) => const LoginPage()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
