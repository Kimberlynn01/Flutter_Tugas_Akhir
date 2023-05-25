import 'package:flutter/material.dart';
import 'package:flutter_pas/icons_dart_icons.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 30),
                      child: Row(
                        children: [
                          Text(
                            'Login Account',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.person_2_outlined),
                          SizedBox(
                            width: 110,
                          ),
                          Image.asset(
                            'assets/ic_indonesia.png',
                            width: 40,
                          ),
                          Icon(
                            IconsDart.shape,
                            size: 9,
                          )
                          // Icon()
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30),
                      child: Text(
                        'Hello , welcome back to our account !',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 60),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(150, 50),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff6A00BF),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(0),
                          )),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Email'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 60),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        minimumSize: MaterialStateProperty.all(
                          Size(150, 50),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 255, 255),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.only(top: 30, right: 12),
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: 'Email address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: 'Email address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
