// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BissnisApp());
}

class BissnisApp extends StatelessWidget {
  const BissnisApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 115,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(350)),
                child: Image(
                  image: AssetImage('images/6.jpg'),
                  width: 200,
                ),
              ),
            ),
            Text(
              'Mohamed Ragab ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 97, 133, 161),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white,
              indent: 60,
              endIndent: 60,
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Icon(
                        Icons.phone,
                        size: 32,
                        color: Color.fromARGB(255, 59, 200, 64),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22),
                      child: Text(
                        '(+20) 1128592199',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.mail,
                      size: 32,
                      color: Color.fromARGB(255, 59, 200, 64),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      'MohmedRagb@gmail.com',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(
                  Icons.phone_android,
                  size: 32,
                  color: Color.fromARGB(255, 59, 200, 64),
                ),
                title: Text(
                  '(Nmb)01286622839',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
