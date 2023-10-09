import 'package:flutter/material.dart';
import 'package:test_is/login_page.dart';
import 'package:test_is/movie_inter.dart';
import 'package:test_is/user_page.dart';

class Peli1 extends StatefulWidget {
  @override
  _Peli1State createState() => _Peli1State();
}

class _Peli1State extends State<Peli1> {
  int currentIndex = 0;
  bool showInfo = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onVerticalDragEnd: (details) {
            setState(() {
              showInfo = !showInfo;
            });
          },
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pelicula1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        if (!showInfo)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Image.asset(
                        'assets/images/dislike.png',
                        width: 34,
                        height: 34,
                      ),
                      onPressed: _left,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Image.asset(
                        'assets/images/flecha.png',
                        width: 34,
                        height: 34,
                      ),
                      onPressed: _back,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Image.asset(
                        'assets/images/like.png',
                        width: 34,
                        height: 34,
                      ),
                      onPressed: _right,
                    ),
                  ),
                ],
              ),
            ),
          ),
        if (showInfo)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Color(0XFF21252E),
              ),
              child: Stack(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'El físico J Robert Oppenheimer trabaja con un equipo de científicos durante el Proyecto Manhattan, que condujo al desarrollo de la bomba atómica.',
                        style: TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Duración:',
                        style: TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '3 horas.',
                        style: TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Género:',
                        style: TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Drama/Historia',
                        style: TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Dirigido por:',
                        style: TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Christopher Nolan',
                        style: TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 65,
                      height: 65,
                      child: Material(
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Image.asset(
                            'assets/images/perfil_pequenno.png',
                            fit: BoxFit.cover,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => User(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  void _left() {
    setState(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Peli2(),
        ),
      );
      showInfo = false;
    });
  }

  void _right() {
    setState(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Peli2(),
        ),
      );
      showInfo = false;
    });
  }

  void _back() {
    setState(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
      showInfo = false;
    });
  }
}
