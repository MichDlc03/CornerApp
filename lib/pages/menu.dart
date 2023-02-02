// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:liga_corner_app/widgets/logo.dart';
import 'package:liga_corner_app/widgets/title.dart';
import 'package:liga_corner_app/widgets/calendar_menu.dart';
import 'package:liga_corner_app/widgets/card_vs.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // ignore: todo
        //TODO HEADER DEL LOGO
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffededed),
        ),
        child: Stack( 
          children:<Widget>[
            Column(
              children: const[
                logo(),
                title(),
                calendar(),
                card(),
                card()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
