import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 64, 30, 65),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 64, 30, 65),
          elevation: 0,
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/images/flecha.png',
                width: 30,
                height: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/perfil_pequenno.png'),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Usuario',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      left: 20.0,
                      bottom: 10.0,
                    ),
                    child: Text(
                      'Películas',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MovieCard('assets/images/pelicula2.jpg'),
                    const SizedBox(width: 30),
                    MovieCard('assets/images/pelicula1.jpg'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MovieCard('assets/images/pelicula3.png'),
                    SizedBox(width: 30),
                    MovieCard('assets/images/pelicula4.jpg'),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String imagePath;

  MovieCard(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
