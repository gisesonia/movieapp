import 'package:flutter/material.dart';
import 'package:movieapp/models/movie.dart';

import '../screens/movie_details_screen.dart';

class MovieList extends StatelessWidget {
  final int index;
  MovieList(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 150,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            MovieDetailsScreen.routeName,
            arguments: {
              'id': movieList[index].id,
              'title': movieList[index].title,
              'imageUrl': movieList[index].imageUrl,
              'description': movieList[index].description,
              'rating': movieList[index].rating,
              'starRating': movieList[index].starRating,
              'year': movieList[index].year,
              'duration': movieList[index].duration,
            },
          );
        },
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.black,
              elevation: 10,
              child: Hero(
                tag: movieList[index].id,
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(movieList[index].imageUrl),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              movieList[index].title,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
