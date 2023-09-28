import 'package:flutter/material.dart';

class ShoppingButton extends StatelessWidget{
  const ShoppingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 550),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: const Color.fromRGBO(125, 96, 161, 1),
        ),
        onPressed: () {
          // ignore: avoid_print
          print('apertado');
        },
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Start Shopping',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

