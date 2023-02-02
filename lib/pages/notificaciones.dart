import 'package:flutter/material.dart';
import 'package:liga_corner_app/core/info_notificaciones.dart';
import 'package:liga_corner_app/widgets/nav_bar.dart';

class MyNotification extends StatelessWidget {
  final List<InfoNotificaciones> _Info = [
    InfoNotificaciones(
        name: "Gran Torneo",
        description: "No te pierdas de esta nuevo Torneo:))"),
    InfoNotificaciones(
        name: "Jornada 2",
        description: "No te pierdas de esta nueva jornada :))"),
    InfoNotificaciones(
        name: "Liga Sabantina",
        description: "Que esperas para participar con nosotros"),
    InfoNotificaciones(
        name: "Estadio Merida",
        description: "Tenemos horarios para los nuevos partidos"),
  ];

  MyNotification({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFE8E8E8),
      appBar: AppBar(
        // actions: [
        //   TextButton(
        //     onPressed: () {

        //     }, child: const Text('Eliminar Todo',
        //     style:TextStyle(
        //       color: Color(0xFF4ECF84)
        //     ) ,),
        //   )
        // ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:const Center(
          child: Text(
              'Notificaciones',
              style: TextStyle(
                color: Color(0xFF595959),
              ),
            ),
        ),
      

        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back, color: Color(0xFF4ECF84)),
        //   onPressed: () {
        //     const NavigationExample();
        //   },
        // ),
      ),
      body: ListView.builder(
        
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: _Info.length,
        itemBuilder: ((context, index) {
          return ListTile(
            onLongPress: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  elevation: 10,
                  title: const Text(' Eliminar Notificacion'),
                  content: const Text('¿Deseas Eliminar esta notificacion?',
                      style: TextStyle(color: Color(0xFF595959))),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel',
                          style: TextStyle(color: Color(0xFF4ECF84))),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Delete'),
                      child: const Text(
                        'Eliminar',
                        style: TextStyle(color: Color(0xFF4ECF84)),
                      ),
                    ),
                  ],
                ),
              ),
            title: Text(_Info[index].name),
            subtitle: Text(_Info[index].description,
                style: const TextStyle(color: Color(0xFF595959))),
            leading: CircleAvatar(
              backgroundColor: const Color(0xFF4ECF84),
              child: Text(
                _Info[index].name.substring(0, 1),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            // trailing: IconButton(
            //   onPressed: () => showDialog<String>(
            //     context: context,
            //     builder: (BuildContext context) => AlertDialog(
            //       elevation: 10,
            //       title: const Text(' Eliminar Notificacion'),
            //       content: const Text('¿Deseas Eliminar esta notificacion?',
            //           style: TextStyle(color: Color(0xFF595959))),
            //       actions: <Widget>[
            //         TextButton(
            //           onPressed: () => Navigator.pop(context, 'Cancel'),
            //           child: const Text('Cancel',
            //               style: TextStyle(color: Color(0xFF4ECF84))),
            //         ),
            //         TextButton(
            //           onPressed: () => Navigator.pop(context, 'Delete'),
            //           child: const Text(
            //             'Eliminar',
            //             style: TextStyle(color: Color(0xFF4ECF84)),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            //   icon: const Icon(
            //     Icons.delete,
            //     color: Color(0xFF4ECF84),
            //   ),
            // ),
            // trailing: const Icon(
            //   Icons.delete,
            //   color: Color(0xFF4ECF84),
            // ),
          );
        }),
      ),
    );
  }
}
