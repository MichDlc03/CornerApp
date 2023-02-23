import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/providers/torneo_provider.dart';
import 'package:liga_corner_app/dtos/responses/requests/torneo_response_dto.dart';
import 'package:liga_corner_app/utils.dart';
import 'package:liga_corner_app/widgets/card_torneos.dart';
import 'package:provider/provider.dart';

class VistasTorneo extends StatelessWidget {
  final TorneoResponseDto? torneo;
  const VistasTorneo({super.key, required this.torneo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          '${torneo?.sName}',
          style: SafeGoogleFont('Nunito', color: Colors.white),
        )),
        elevation: 0,
        backgroundColor: Color(0xFF4ECF84),
      ),
      backgroundColor: const Color(0xffE8E8E8),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: torneo?.teams.length,
          itemBuilder: (BuildContext context, int index) {
            final team = torneo?.teams[index];
            final ciudad = team?.tCity ?? 'Sin ciudad';
            final logo = team?.tEmblem ??
                'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg';
            return CardTorneos(
              UrlImage:
                  'https://ligasabatinadefutbol.com.mx/media/bearleague/${logo}',
              name: '${team?.tName}',
              city: ciudad,
              //numberplayers: '${team?.}'
            );
          },
        ),
        // child: GridView.count(
        //   mainAxisSpacing: 10,
        //   crossAxisSpacing: 5,
        //   crossAxisCount: 2,
        //   children: [
        //     CardTorneos(
        //         UrlImage:
        //             'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //         name: '${torneo?.teams[0].tName}',
        //         city: 'Merida, Yucatan',
        //         numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
        // CardTorneos(
        //     UrlImage:
        //         'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg',
        //     name: 'Gallos MX',
        //     city: 'Merida, Yucatan',
        //     numberplayers: '15'),
      ),
    );
  }
}
