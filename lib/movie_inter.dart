import 'package:flutter/material.dart';
import 'package:test_is/movie_opp.dart';
import 'package:test_is/user_page.dart';

class Peli2 extends StatefulWidget {
  @override
  _Peli2State createState() => _Peli2State();
}

class _Peli2State extends State<Peli2> {
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
                image: AssetImage('assets/images/pelicula2.jpg'),
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
                        'Un equipo de exploradores viaja más allá de esta galaxia a través de un recién descubierto agujero para descubrir si la humanidad tiene un futuro entre las estrellas.',
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
                        '2 h 42 min.',
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
                        'Drama/Ciencia ficción',
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
          builder: (context) => Peli1(),
        ),
      );
      showInfo = false;
    });
  }

  void _right() {
    setState(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Peli1(),
        ),
      );
      showInfo = false;
    });
  }

  void _back() {
    setState(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Peli1(),
        ),
      );
      showInfo = false;
    });
  }
}
