// ignore: file_names
import 'package:flutter/material.dart';
import 'package:liga_corner_app/widgets/config_Responsive.dart';

class SettingsProfilePage extends StatefulWidget {
  const SettingsProfilePage({super.key});

  @override
  State<SettingsProfilePage> createState() => _SettingsProfilePageState();
}

class _SettingsProfilePageState extends State<SettingsProfilePage> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  @override
  Widget build(BuildContext context) {
    const String title = 'Ajustes de Perfil';

    return Scaffold(
      backgroundColor: const Color(0xFFE8E8E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8E8E8),
        elevation: 0,
        toolbarHeight: 80,
        title: const Text(
          title,
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
            children: [
              const CardProfileImageSettings(),
              const CardNameUser(),
              const NumberPhone(),
              const MailProfile(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.pushNamed(context, '/edid_Profile');
                  }),
                  child: const Text(
                    'Editar',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardProfileImageSettings extends StatelessWidget {
  const CardProfileImageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(18 * fem, 0 * fem, 19 * fem, 23 * fem),
      padding: EdgeInsets.fromLTRB(11 * fem, 17 * fem, 12 * fem, 33 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(10 * fem),
        boxShadow: [
          BoxShadow(
            color: const Color(0x26000000),
            offset: Offset(0 * fem, 2 * fem),
            blurRadius: 0 * fem,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Container(
                width: fem * 70,
                height: fem * 70,
                child: const Icon(Icons.photo_camera),
                decoration: const BoxDecoration(
                    color: Color(0xFF4ECF84), shape: BoxShape.circle),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Leonel Messi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardNameUser extends StatelessWidget {
  const CardNameUser({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);

    return Container(
      decoration: const BoxDecoration(color: Color(0xFFE8E8E8)),
      margin: const EdgeInsets.all(8),
      width: SizeConfig.screenWidth,
      height: 70,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:
                  Icon(Icons.person, color: Color.fromARGB(188, 20, 237, 67)),
            ),
            Expanded(
              child: Text(
                'Leonel Messi',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberPhone extends StatelessWidget {
  const NumberPhone({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);

    return Container(
      decoration: const BoxDecoration(color: Color(0xFFE8E8E8)),
      margin: const EdgeInsets.all(8),
      width: SizeConfig.screenWidth,
      height: 70,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.call, color: Color.fromARGB(188, 20, 237, 67)),
            ),
            Expanded(
              child: Text(
                '+52  99 95674433 ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MailProfile extends StatelessWidget {
  const MailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);

    return Container(
      decoration: const BoxDecoration(color: Color(0xFFE8E8E8)),
      margin: const EdgeInsets.all(8),
      width: SizeConfig.screenWidth,
      height: 70,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.mail, color: Color.fromARGB(188, 20, 237, 67)),
            ),
            Expanded(
              child: Text(
                'leonelmessi@hotmail.com',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
