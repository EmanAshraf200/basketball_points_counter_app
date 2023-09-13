import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counterA = 0;

  int counterB = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      "$counterA",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink, // Set the desired button color
                        maximumSize: Size(200, 100),
                      ),
                      onPressed: () {
                        setState(() {
                          counterA++;
                        });
                      },
                      child: const Text(
                        'add 1 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink, // Set the desired button color
                        maximumSize: Size(200, 100),
                      ),
                      onPressed: () {
                        setState(() {
                          counterA += 2;
                        });
                      },
                      child: const Text(
                        'add 2 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        // Set the desired button color
                        maximumSize: Size(200, 100),
                      ),
                      onPressed: () {
                        setState(() {
                          counterA += 3;
                        });
                      },
                      child: const Text(
                        'add 3 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 3, // Set the thickness of the divider
                    color: Colors.grey,
                    indent: 50,
                    endIndent: 50, // Set the color of the divider
                    //width: 100, // Set the width of the divider
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      "$counterB",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        maximumSize: Size(200, 100),
                        // Set the desired button color
                      ),
                      onPressed: () {
                        setState(() {
                          counterB++;
                        });
                      },
                      child: const Text(
                        'add 1 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        maximumSize: Size(200, 100),
                      ),
                      onPressed: () {
                        setState(() {
                          counterB += 2;
                        });
                      },
                      child: const Text(
                        'add 2 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        maximumSize: Size(200, 100),
                        // Set the desired button color
                      ),
                      onPressed: () {
                        setState(() {
                          counterB += 3;
                        });
                      },
                      child: const Text(
                        'add 3 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                maximumSize: Size(250, 150),
                // Set the desired button color
              ),
              onPressed: () {
                setState(() {
                  counterA = 0;
                  counterB = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
