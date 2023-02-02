import 'package:flutter/material.dart';

class TorneosPages extends StatelessWidget {
  const TorneosPages({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: const EdgeInsets.symmetric(vertical: 20),
      crossAxisCount: 2,
      children: [
        Card(
          
          margin: const EdgeInsets.all(4),
          color: const Color(0xFF4ECF84),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            splashColor: const Color.fromARGB(255, 211, 216, 211),
            onTap: () {},
            child: Column(
      
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: const [
                      Text(
                        'Champions',
                        style: TextStyle(
                            color: Color(0xFF595959),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Image.asset(
                      'images/barca.jpg',
                    )),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(4),
          color: const Color(0xFF4ECF84),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: const [
                      Text(
                        'Champions',
                        style: TextStyle(
                            color: Color(0xFF595959),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Image.asset(
                      'images/barca.jpg',
                    )),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(4),
          color: const Color(0xFF4ECF84),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: const [
                      Text(
                        'Champions',
                        style: TextStyle(
                            color: Color(0xFF595959),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Image.asset(
                      'images/barca.jpg',
                    )),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(4),
          color: const Color(0xFF4ECF84),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: const [
                      Text(
                        'Champions',
                        style: TextStyle(
                            color: Color(0xFF595959),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Image.asset(
                      'images/barca.jpg',
                    )),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(4),
          color: const Color(0xFF4ECF84),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: const [
                      Text(
                        'Champions',
                        style: TextStyle(
                            color: Color(0xFF595959),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Image.asset(
                      'images/barca.jpg',
                    )),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(4),
          color: const Color(0xFF4ECF84),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: const [
                      Text(
                        'Champions',
                        style: TextStyle(
                            color: Color(0xFF595959),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Image.asset(
                      'images/barca.jpg',
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
