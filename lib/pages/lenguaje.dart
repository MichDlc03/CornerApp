import 'package:flutter/material.dart';
import 'package:liga_corner_app/widgets/config_Responsive.dart';

class LenguajePages extends StatefulWidget {
  const LenguajePages({super.key});

  @override
  State<LenguajePages> createState() => _LenguajePageState();
}

class _LenguajePageState extends State<LenguajePages> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    const String _title = 'Lenguaje';

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
              LenguajeBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class LenguajeBody extends StatelessWidget {
  const LenguajeBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: Column(
        children:const <Widget> [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: CenterContainerCard(),
          ),
        ],
      ),
    );
  }
}

class CenterContainerCard extends StatelessWidget {
  const CenterContainerCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Container(
      height: SizeConfig.blockSizeVertical(85),
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
        BoxShadow(
          color: Colors.grey.shade600,
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 10)
          
        )
        ],
        color: Colors.white
      ),
    );
  }
}