import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF21252E),
      body: Column(
        children: [
          const Spacer(),
          const Text(
            'MOVIENDER',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          const Spacer(flex: 2),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingresa tu ID',
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: Text("Login"),
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
