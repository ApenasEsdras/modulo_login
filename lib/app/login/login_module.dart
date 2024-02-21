import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulo_login/app/login/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => const LoginPage()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const LoginPage()),
  ];
}