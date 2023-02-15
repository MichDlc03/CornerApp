import 'package:flutter/material.dart';
import 'package:liga_corner_app/widgets/card_torneos.dart';

class VistasTorneo extends StatelessWidget {
  const VistasTorneo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Torneo 1', style: TextStyle(color: Colors.black),)),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: GridView.count(

            crossAxisCount: 2,
            children: const[
              CardTorneos(
                UrlImage: 'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg', 
                name: 'Gallos MX', 
                city:'Merida, Yucatan', 
                numberplayers: '15'
                ),
                CardTorneos(
                UrlImage: 'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg', 
                name: 'Gallos MX', 
                city:'Merida, Yucatan', 
                numberplayers: '15'
                ),
                CardTorneos(
                UrlImage: 'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg', 
                name: 'Gallos MX', 
                city:'Merida, Yucatan', 
                numberplayers: '15'
                ),
                CardTorneos(
                UrlImage: 'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg', 
                name: 'Gallos MX', 
                city:'Merida, Yucatan', 
                numberplayers: '15'
                ),
                CardTorneos(
                UrlImage: 'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg', 
                name: 'Gallos MX', 
                city:'Merida, Yucatan', 
                numberplayers: '15'
                ),
                CardTorneos(
                UrlImage: 'https://cdn.pixabay.com/photo/2015/01/21/00/56/soccer-606235_960_720.jpg', 
                name: 'Gallos MX', 
                city:'Merida, Yucatan', 
                numberplayers: '15'
                ),
            ],
          ),
        ));
  }
}
