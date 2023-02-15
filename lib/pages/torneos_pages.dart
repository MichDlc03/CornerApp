import 'package:flutter/material.dart';
import 'package:liga_corner_app/widgets/card_partidos.dart';

class TorneosPages extends StatelessWidget {
  const TorneosPages({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(vertical: 20),
      crossAxisCount: 2,
      children: const [
        Card_patidos(
          Textcard: 'Liga MX',
          UrlImage:
              'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        ),
        Card_patidos(
          Textcard: 'Liga Bancomer',
          UrlImage:
              'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        ),
        Card_patidos(
          Textcard: 'Liga Sabantina',
          UrlImage:
              'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
        ),
        Card_patidos(
          Textcard: 'Liga MX',
          UrlImage:
              'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
        ),
        Card_patidos(
          Textcard: 'Liga MX',
          UrlImage:
              'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
        ),
        Card_patidos(
          Textcard: 'Liga MX',
          UrlImage:
              'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
        ),
        Card_patidos(
          Textcard: 'Liga MX',
          UrlImage:
              'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
        ),
        Card_patidos(
          Textcard: 'Liga MX',
          UrlImage:
              'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
        ),
      ],
    );
  }
}
