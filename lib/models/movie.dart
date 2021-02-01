class Movie {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String rating;
  final String year;
  final String duration;

  Movie({
    this.id,
    this.title,
    this.imageUrl,
    this.description,
    this.rating,
    this.year,
    this.duration,
  });
}

final movieList = [
  Movie(
      id: '0001',
      title: 'Vingadores - Guerra Infinita',
      imageUrl: 'assets/images/vingadores_guerra_infinita.jpg',
      description:
          'Thanos finalmente chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.',
      rating: '8.6',
      year: '2019',
      duration: '181 min'),
  Movie(
      id: '0002',
      title: 'Capitã Marvel',
      imageUrl: 'assets/images/Capita_Marvel_2018.jpg',
      description:
          'Ambientado nos anos 1990, Capitã Marvel da Marvel Studios é uma aventura totalmente nova de um período nunca visto na história do Universo Cinematográfico da Marvel que acompanha a jornada de Carol Danvers, conforme ela se torna uma das personagens mais poderosas do universo. Enquanto uma guerra galáctica entre duas raças alienígenas chega à Terra, Danvers se vê junto a um pequeno grupo de aliados bem no meio da ação.',
      rating: '8.6',
      year: '2019',
      duration: '181 min'),
  Movie(
      id: '0003',
      title: 'Vingadores - Guerra Infinita',
      imageUrl: 'assets/images/pantera_negra_2018.jpg',
      description:
          'Thanos finalmente chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.',
      rating: '8.6',
      year: '2019',
      duration: '181 min'),
];
