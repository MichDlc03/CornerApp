import 'package:flutter/material.dart';

class PartidosPages extends StatelessWidget {
  const PartidosPages({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: const EdgeInsets.symmetric(vertical: 30),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color: const Color(0xFF4ECF84),
            ),
            
          child: Column(
          
          children:[
            Container (
              padding: const EdgeInsets.all(5),
              child: const Text('Champions',
              style: TextStyle(
              color: Color(0xFF595959),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(2),
                child: Image.asset('images/barca.jpg'),
              )
            
          ],
          ),        
          ),
      Container(
      
          padding: const EdgeInsets.all(5),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color: const Color(0xFF4ECF84),
            ),
          child: Column(
          children: [
          Container (
              padding: const EdgeInsets.all(5),
              child: const Text('Champions',
              style: TextStyle(
              color: Color(0xFF595959),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(2),
                child: Image.asset('images/barca.jpg'),
              )
        
          ],
          ),        
          ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color: const Color(0xFF4ECF84),
            ),
            child: Column(
            children:[
              Container (
                padding: const EdgeInsets.all(5),
                child: const Text('Champions',
                style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                child: Image.asset('images/barca.jpg'),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color:const Color(0xFF4ECF84),
            ),
          child: Column(
            
            children:[
              
              Container (
                padding: const EdgeInsets.all(5),
                child: const Text('Champions',
                style: TextStyle(
                color: Color(0xFF595959),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                ),
                ),
                
              ),
              Container(
                padding: const EdgeInsets.all(2),
                child: Image.asset('images/barca.jpg'),
              )
              
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color: const Color(0xFF4ECF84),
            ),
          child: Column(
          children:[
            Container (
              padding: const EdgeInsets.all(5),
              child: const Text('Champions',
              style: TextStyle(
              color: Color(0xFF595959),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(2),
                child: Image.asset('images/barca.jpg'),
              )
          ],
          ),        
          ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color: const Color(0xFF4ECF84),
            ),
          child: Column(
          children:[
            Container (
              padding: const EdgeInsets.all(5),
              child: const Text('Champions',
              style: TextStyle(
              color: Color(0xFF595959),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(2),
                child: Image.asset('images/barca.jpg'),
              )
          ],
          ),        
          ),
      ],
    );
  }
}
