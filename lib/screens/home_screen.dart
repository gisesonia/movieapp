import 'package:flutter/material.dart';
import 'package:movieapp/models/movie.dart';
import 'package:movieapp/widgets/movie_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                padding: EdgeInsets.zero,
                height: 450.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  alignment: Alignment.topLeft,
                  image: AssetImage('assets/images/hero_pantera_negra.jpg'),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                height: 450.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.black,
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieList.length,
              itemBuilder: (ctx, i) => MovieList(i),
            ),
          ),
        ],
      ),
    );
  }
}
