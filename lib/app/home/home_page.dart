// HomePage
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulo_login/app/login/login_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Página inicial'),
            ElevatedButton(
              onPressed: () async {
                final AuthService authService = Modular.get();
                await authService.logout();
                // Redirecionar para Login após logout
                Modular.to.navigate('/');
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
