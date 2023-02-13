import 'package:flutter/material.dart';
import 'package:liga_corner_app/pages/edit_profile.dart';
import 'package:liga_corner_app/pages/lenguaje.dart';
import 'package:liga_corner_app/pages/settingsProfile.dart';
import 'package:liga_corner_app/widgets/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      initialRoute: '/',
      routes: {
        '/settinsProfile': (context) => const SettingsProfilePage(),  
        '/edid_Profile': (context) => const EdidProfile(),
        '/lenguaje_pages':(context) => const LenguajePages(),
      },
      debugShowCheckedModeBanner: false,
      home:const  NavigationExample(), 

    );
  }
}
