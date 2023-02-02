import 'package:flutter/material.dart';
import 'package:liga_corner_app/pages/partidos_pages.dart';
import 'package:liga_corner_app/pages/torneos_pages.dart';
import 'package:liga_corner_app/pages/resultados_pages.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  void despose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      backgroundColor:const Color(0xFFE8E8E8),
      appBar: AppBar(
        
        elevation: 0,
        toolbarHeight: 80,
        title: Image.asset('images/logo.png', height: 90, width: 120,),
        
        backgroundColor: Colors.transparent,
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  //height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(5), //
                      child: TabBar(
                      unselectedLabelColor:const Color(0xFF595959) ,
                      labelColor:Colors.white, 
                      indicatorColor: const Color(0xFFD9D9D9), 
                      indicatorWeight: 2,
                      indicator: BoxDecoration(
                      color:  const Color(0xFF4ECF84),
                      borderRadius: BorderRadius.circular(5),
                      ),
                      controller: tabController,
                      tabs: const [
                        Tab(
                          text: 'Partidos',
                        ),
                        Tab(
                          text: 'Torneos',
                        ),
                        Tab(
                          text: 'Resultados',
                        ),
                      ],
                      ),
                    ),
                  ],
                  ),
                ),
                Expanded(
                child:
                TabBarView(
                  controller: tabController,
                  children: const[
                    PartidosPages(),
                    TorneosPages(),
                    ResultadosPages()
                  ],)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}