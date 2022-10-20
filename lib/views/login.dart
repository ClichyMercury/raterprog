import 'package:flutter/material.dart';
import 'package:raterprog/coponents/homebull.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:raterprog/views/footer_example.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final List<String> sadio = [
    "assets/images/space0.png",
    "assets/images/space1.png",
    "assets/images/space2.png",
    "assets/images/space3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CarouselSlider(
              items: sadio
                  .map((item) => Container(
                        child: Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            //width: 1000,
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  height: 500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 25,
                ),
                Homebull(
                    iconmod: (Icons.east_outlined),
                    iconcolor: Colors.amber,
                    iconsize: 15,
                    Titre: 'next',
                    titrecolor: Colors.black,
                    titresize: 15,
                    desc: 'away',
                    desccolor: Colors.black,
                    descsize: 10,
                    containercolor: Colors.blue,
                    boxcolor: Colors.blue.shade500,
                    widthcontainer: 70,
                    heightContainer: 70,
                    rad: 15,
                    context: context,
                    lien: FooterPage()),
                SizedBox(
                  width: 25,
                ),
                Homebull(
                    iconmod: (Icons.outbond),
                    iconcolor: Colors.amber,
                    iconsize: 15,
                    Titre: 'flight',
                    titrecolor: Colors.black,
                    titresize: 15,
                    desc: 'plane',
                    desccolor: Colors.black,
                    descsize: 10,
                    containercolor: Colors.blue,
                    boxcolor: Colors.blue.shade500,
                    widthcontainer: 70,
                    heightContainer: 70,
                    rad: 15),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Homebull(
                  iconmod: (Icons.offline_bolt),
                  iconcolor: Colors.amber,
                  iconsize: 15,
                  Titre: 'thanos',
                  titrecolor: Colors.black,
                  titresize: 15,
                  desc: 'stone strong',
                  desccolor: Colors.black,
                  descsize: 10,
                  containercolor: Colors.blue,
                  boxcolor: Colors.blue.shade500,
                  widthcontainer: 70,
                  heightContainer: 70,
                  rad: 15,
                ),
                SizedBox(
                  width: 25,
                ),
                Homebull(
                    iconmod: (Icons.table_chart_rounded),
                    iconcolor: Colors.amber,
                    iconsize: 15,
                    Titre: 'plans',
                    titrecolor: Colors.black,
                    titresize: 15,
                    desc: 'look at',
                    desccolor: Colors.black,
                    descsize: 10,
                    containercolor: Colors.blue,
                    boxcolor: Colors.blue.shade500,
                    widthcontainer: 70,
                    heightContainer: 70,
                    rad: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
