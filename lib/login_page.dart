import 'package:flutter/material.dart';
import 'package:test_is/movie_opp.dart';
import 'dart:math' as math;

import 'package:test_is/movies.dart';

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
              fontFamily: 'openSans',
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Transform.rotate(
            angle: -25 * (math.pi / 180),
            child: Image.asset(
              'assets/images/rollo.png',
              width: 400,
              height: 300,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'ID',
                contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Peli1(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.pink[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text("Login"),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
