// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Card_patidos extends StatelessWidget {
  final String Textcard;
  final String UrlImage;
  const Card_patidos({
    Key? key,
    required this.UrlImage,
    required this.Textcard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: const Color(0xFF4ECF84),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor:const Color.fromARGB(255, 148, 225, 148),
        onTap: () {},
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    Textcard,
                    style: const TextStyle(
                        color: Color(0xFF595959), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Image.network(
                    UrlImage, 
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
