// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/torneo_provider.dart';
import 'package:liga_corner_app/dtos/responses/requests/torneo_response_dto.dart';
import 'package:liga_corner_app/pages/vista_torneos.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:provider/provider.dart';

class Card_patidos extends StatelessWidget {
  final TorneoResponseDto torneo;
  final String Textcard;
  final String UrlImage;
  const Card_patidos({
    Key? key,
    required this.torneo,
    required this.UrlImage,
    required this.Textcard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TorneoProvider()..fetchUsers(),
      child: Card(
        margin: const EdgeInsets.all(5),
        color: const Color(0xFF4ECF84),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: const Color.fromARGB(255, 148, 225, 148),
          onTap: () {
            VistasTorneo(torneo: torneo);
            Navigator.pushNamed(context, '/vista_torneo');
          },
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      Textcard,
                      style: SafeGoogleFont('Nunito',
                          color: const Color(0xFFffffff),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      UrlImage,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
