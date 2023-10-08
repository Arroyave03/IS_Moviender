import 'package:flutter/material.dart';
import 'package:test_is/login_page.dart';
import 'package:test_is/movie_inter.dart';

class Peli1 extends StatefulWidget {
  @override
  _Peli1State createState() => _Peli1State();
}

class _Peli1State extends State<Peli1> {
  int currentIndex = 0;
  bool showInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pelicula1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (!showInfo)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.thumb_down,
                        color: Colors.white,
                      ), //Image.asset('assets/images/dislike.jpg'),
                      onPressed: _left,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: _back,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                      ), //Image.asset('assets/images/like.jpg'),
                      onPressed: _right,
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
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  color: Color(0XFF21252E),
                ),
                child: const Center(
                  child: Text(
                    'Información',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
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
