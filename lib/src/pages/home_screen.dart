// ignore_for_file: dead_code

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kids_app/src/pages/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final imagesAssets = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
  ];

  final titles = [
    "León",
    "Hipopótamo",
    "Tigre",
    "Oso Panda",
    "Jirafa",
    "Conejo",
  ];

  final description = [
    "El león es un mamífero carnívoro de la familia de los félidos y una de las cinco especies del género Panthera.",
    "El hipopótamo común o hipopótamo del Nilo es una especie de mamífero artiodáctilo de la familia Hippopotamidae.",
    "El tigre es una de las especies de la subfamilia de los panterinos pertenecientes al género Panthera.",
    "El oso panda, también llamado oso panda gigante, es una especie de mamífero del orden de los carnívoros.",
    "La jirafa es una especie de mamífero artiodáctilo de la familia Giraffidae propio de África.",
    "Los conejos son mamíferos lagomorfos de la familia Leporidae, y el único miembro actual del género Oryctolagus.",
  ];

  final colors = [
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.blue,
  ];

  final lifespan = [
    "10-14 años",
    "40-50 años",
    "10-15 años",
    "20 años",
    "25 años",
    "9-12 años",
  ];

  final origin = [
    "África",
    "África",
    "Asia",
    "Asia",
    "África",
    "Europa",
  ];

  final speed = [
    "80 km/h",
    "30 km/h",
    "65 km/h",
    "50 km/h",
    "60 km/h",
    "56 km/h",
  ];

  double verticalDrag = 0.0;
  bool isFront = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/icons/menu.png",
                  height: 50,
                  width: 50,
                ),
                const Text("Kids App",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                Image.asset(
                  "assets/images/1.png",
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          color: Colors.primaries[index],
                          image: imagesAssets[index],
                          title: titles[index],
                          description: description[index],
                          lifespan: lifespan[index],
                          speed: speed[index],
                        ),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: Card(
                            color: Colors.primaries[index],
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 80, right: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            titles[index],
                                            style: const TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Text(
                                            description[index],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 20,
                        child: Hero(
                          tag: imagesAssets[index],
                          child: Image.asset(
                            imagesAssets[index],
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
