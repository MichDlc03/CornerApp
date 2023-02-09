import 'package:flutter/material.dart';

class EdidProfile extends StatefulWidget {
  const EdidProfile({super.key});

  @override
  State<EdidProfile> createState() => _EdidProfileState();
}

class _EdidProfileState extends State<EdidProfile> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    const String _title = 'Editar Perfil';

    return Scaffold(
      backgroundColor: const Color(0xFFE8E8E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8E8E8),
        elevation: 0,
        toolbarHeight: 80,
        title: const Text(
          _title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        scrolledUnderElevation: scrolledUnderElevation,
        shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : null,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
  
              ],
          ),
        ),
      ),
    );
  }
}


