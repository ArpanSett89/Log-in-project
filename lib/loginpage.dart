import 'package:flutter/material.dart';
import 'package:login_page/signinpage.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9655),
      body: SingleChildScrollView(
        child: SizedBox(

          height: MediaQuery.of(context).size.height,
          //print(MediaQuery.of(context).size.height);
          width: MediaQuery.of(context).size.width,
          child: Stack(
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
                    'LOG IN',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 300),
                child: Image.asset('images/index7.jpeg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
                child: Container(
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Colors.purple.withOpacity(0.3),
                      ),
                      showCursor: true,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 250, 50, 0),
                child: Container(
                    alignment: Alignment.center,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.purple,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.purple,
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Colors.purple.withOpacity(0.3),
                      ),
                      showCursor: true,
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 200),
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23),
                        //side: BorderSide(color: Colors.red)
                      )),
                      minimumSize:
                          MaterialStateProperty.all(const Size(250, 50)),
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                    ),
                    onPressed: null,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 40, 160),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Don't have any Account?",
                    style: TextStyle(fontSize: 12, color: Colors.purple),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(130, 0, 0, 143),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 170, 0, 0),
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'images/index3.jpeg',
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
