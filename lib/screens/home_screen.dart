import 'package:flutter/material.dart';
import 'package:movieapp/models/movie.dart';
import 'package:movieapp/widgets/movie_list.dart';

import 'movie_details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                padding: EdgeInsets.zero,
                height: 400.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  alignment: Alignment.topLeft,
                  image: AssetImage('assets/images/hero_pantera_negra.jpg'),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                height: 400.0,
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
          Center(
            child: SizedBox(
              width: width,
              child: RaisedButton(
                color: Colors.grey[900],
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    MovieDetailsScreen.routeName,
                    arguments: {
                      'id': '0000',
                      'title': 'Pantera Negra',
                      'imageUrl': 'assets/images/pantera_negra_2018.jpg',
                      'description':
                          'Após os eventos de Capitão América: Guerra Civil (2016), o príncipe T’Challa volta para sua casa na isolada e tecnologicamente desenvolvida nação africana de Wakanda, para assumir seu lugar como Rei. Entretanto, quando um velho inimigo reaparece, a fibra de T’Challa tanto como Rei quanto como o herói Pantera Negra é testada. Ele é levado a um conflito que coloca o destino de Wakanda e do mundo em risco.',
                      'rating': '8.6',
                      'starRating': 5,
                      'year': '2019',
                      'duration': '181 min'
                    },
                  );
                },
                child: Text(
                  'Pantera Negra',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Destaques Marvel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Container(
              color: Colors.black,
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => MovieList(i),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
