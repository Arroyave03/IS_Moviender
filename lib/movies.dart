import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  List<String> movies = [
    'Pelicula 1',
    'Pelicula 2',
  ];

  int currentIndex = 0;
  bool showInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: currentIndex < movies.length
            ? _buildCard(movies[currentIndex])
            : Text('No hay más películas disponibles.'),
      ),
    );
  }

  Widget _buildCard(String movie) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        setState(() {
          showInfo = !showInfo;
        });
      },
      child: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/pelicula${currentIndex + 1}.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (!showInfo) //Cuando showInfo es falso se ven botones
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
      currentIndex++;
      showInfo = false;
    });
  }

  void _right() {
    setState(() {
      currentIndex++;
      showInfo = false;
    });
  }

  void _back() {
    setState(() {
      currentIndex--;
      showInfo = false;
    });
  }
}
