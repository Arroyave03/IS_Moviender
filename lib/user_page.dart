import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});
  //Revisar imagenes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perfil de Usuario y Películas'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/user_image.png'),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Nombre del Usuario',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Text(
                'Películas',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MovieCard('assets/images/pelicula1.jpg'),
                  const SizedBox(width: 10),
                  MovieCard('assets/images/pelicula2.jpg'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MovieCard('assets/images/pelicula3.jpg'),
                  SizedBox(width: 10),
                  MovieCard('assets/images/pelicula4.jpg'),
                ],
              ),
            ],
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
      width: 150,
      height: 225,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
