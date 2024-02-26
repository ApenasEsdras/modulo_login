import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home/home_module.dart';
import 'login/auth_guard.dart';
import 'login/login_module.dart';
import 'login/login_service.dart';

class AppModule extends Module {
   AppModule() {
    // Adicione sua lógica de inicialização aqui
    print('AppModule iniciado');
  }
  @override
  List<Bind> get binds => [
    Bind((i) => AuthService()),
    Bind((i) => AuthRouteGuard()),
    AsyncBind<SharedPreferences>((i) async => await SharedPreferences.getInstance()),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule(), guards: [AuthRouteGuard()]),
  ];

 
}
