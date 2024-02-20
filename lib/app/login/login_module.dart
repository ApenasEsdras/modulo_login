import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulo_login/app/login/login_page.dart';

class LoginModule extends Module {
 @override
  void binds(i) => FirebaseAuth.instance;
  
  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginPage());
    
  }
}
