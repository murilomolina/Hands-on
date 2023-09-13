import 'package:flutter/material.dart';
import 'package:hands_on/learn_login_buttons.dart';
import 'package:hands_on/start_shopping.dart';


class HandsOnApp extends StatelessWidget{
  const HandsOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(125, 96, 161, 1),
          title: const Text(
            'Home Page',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0)),
        ),
    
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(35.0), 
              child: Center(
                child: Text(
                  'Every Purchase Will be Made With Pleasure',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0), 
              child: Center(
                child: Text(
                  'Buy and Enjoy',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ShoppingButton(),
          Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LmLoginButtons(),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}