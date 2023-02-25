import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/teams_provider.dart';
import 'package:liga_corner_app/dtos/responses/requests/teams_responses_dto.dart';
import 'package:liga_corner_app/dtos/responses/requests/torneo_response_dto.dart';
import 'package:liga_corner_app/pages/perfil.dart';
import 'package:provider/provider.dart';

class VistasTorneo extends StatelessWidget {
  final TorneoResponseDto? torneo;
  final TeamsResponsDto? teams;
  const VistasTorneo({
    super.key,
    required this.torneo,
    this.teams,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          '${torneo?.sName}',
          /* style: SafeGoogleFont('Nunito', color: Colors.white),*/
        )),
        elevation: 0,
        backgroundColor: Color(0xFF4ECF84),
      ),
      backgroundColor: const Color(0xffE8E8E8),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: torneo?.teams.length,
                itemBuilder: (BuildContext context, int index) {
                  final team = torneo?.teams[index];
                  final ciudad = team?.tCity ?? 'Sin ciudad';
                  final logo = team?.tEmblem ?? 'null';
                  'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg';

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PagePerfil(teams: teams)));
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.all(5),
                      color: const Color(0xFFFFFFFF),
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image.network(
                                          'https://ligasabatinadefutbol.com.mx/media/bearleague/${logo}'),
                                    ),
                                    Row(
                                      children: [
                                        Text('Nombre: ${team?.tName}'),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Row(
                                        children: [Text(ciudad)],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
