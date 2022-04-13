import 'package:flutter/material.dart';
import 'package:login_page/signinpage.dart';

import 'loginpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9655),
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'images/index1.jpeg',
                height: 100,
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Text(
                  'Welcome to EDU',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 200),
              child: Image.asset('images/index5.jpeg'),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 170, 0, 0),
              alignment: Alignment.centerRight,
              child: Image.asset(
                'images/index11.jpeg',
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
              child: Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                      )),
                      minimumSize:
                          MaterialStateProperty.all(const Size(250, 50)),
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogInPage()),
                      );
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 145),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        )),
                        minimumSize:
                            MaterialStateProperty.all(const Size(250, 50)),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.purple.withOpacity(0.2))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 170, 0, 0),
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'images/index12.jpeg',
                height: 100,
              ),
            ),
          ],
        ),

    );
  }
}
