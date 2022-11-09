import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignmentlogin/Home.dart';
import 'package:assignmentlogin/Login.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: const Text(
                'HELLO THERE!!!',
                style: TextStyle(
                    backgroundColor: Colors.white10,
                    color: Color.fromARGB(255, 11, 11, 11),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: const Text(
                  '''Automatic identity verification which enable you to
                              verify you to identitiy''',
                  style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 130, top: 40, bottom: 40),
                  child: Container(
                    height: 100,
                    width: 150,
                    child: Image(
                        image: NetworkImage(
                            'https://imgs.search.brave.com/cjVJ6tdrk48KvAITTrDaQ1i9nIO5JUT6d3lC8Uw6fx0/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5s/eEpIdUlhSldJR0th/VDM3M0VkcGJnSGFI/YSZwaWQ9QXBp')),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 36, 28, 152)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'Login',
                      style:
                          TextStyle(color: Color.fromARGB(255, 185, 186, 186)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 233, 7, 7)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            10,
                            5,
                            5,
                          ),
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
