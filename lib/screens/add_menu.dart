import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/appbar.dart';
import 'package:flutter_application_1/Widgets/bottombar.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';
import 'package:flutter_application_1/screens/bloodtest.dart';
import 'package:flutter_application_1/screens/menu.dart';
import 'dart:math';

import 'package:flutter_application_1/screens/sport.dart';

String generateRandomString(int len) {
  var r = Random();
  return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89));
}

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(title: 'add', backgroundColor: Colors.white),
        drawer: Drawer(
          child: drawer(),
        ),
        bottomNavigationBar: Publicbar(),
        body: Stack(
          children: [
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => menu()));
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0.5, 0.5),
                    blurRadius: 0.5,
                    color: Color.fromARGB(255, 6, 80, 141),
                  ),
                ],
              ),
              label: Text(
                'back',
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 80, 141),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.5, 0.5),
                      blurRadius: 0.5,
                      color: Color.fromARGB(255, 6, 80, 141),
                    ),
                  ],
                ),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 6, 80, 141),
                side: BorderSide(color: Colors.transparent),
              ),
            ),
            Center(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                padding: EdgeInsets.all(40.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: generateRandomString(5),
                    onPressed: () {
                      print('10');
                    },
                    shape: const StadiumBorder(
                        side: BorderSide(color: Colors.blue, width: 4)),
                    child: Container(
                      child: Image(image: AssetImage('assets/Food.png')),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 100, 100, 100)
                                .withOpacity(0.1),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(3, 5),
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white.withOpacity(1),
                  ),
                  FloatingActionButton(
                    heroTag: generateRandomString(7),
                    onPressed: () {
                      print('10');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sport()));
                    },
                    shape: const StadiumBorder(
                        side: BorderSide(color: Colors.indigo, width: 4)),
                    child: Container(
                      child: Image(image: AssetImage('assets/Sport.png')),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 100, 100, 100)
                                .withOpacity(0.1),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(3, 5),
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  FloatingActionButton(
                    heroTag: generateRandomString(10),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => bloodtest()));
                    },
                    shape: const StadiumBorder(
                        side: BorderSide(color: Colors.red, width: 4)),
                    child: Container(
                      child: Image(image: AssetImage('assets/Blood.png')),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 100, 100, 100)
                                .withOpacity(0.1),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(3, 5),
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  FloatingActionButton(
                    heroTag: generateRandomString(12),
                    onPressed: () {
                      print('10');
                    },
                    shape: const StadiumBorder(
                        side: BorderSide(color: Colors.green, width: 4)),
                    child: Container(
                      child: Image(
                        image: AssetImage('assets/Needle.png'),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 100, 100, 100)
                                .withOpacity(0.1),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(3, 5),
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
