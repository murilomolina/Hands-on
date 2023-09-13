import 'package:flutter/material.dart';

class LmLoginButtons extends StatelessWidget{
  const LmLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), 
              ),
              side: const BorderSide(
                color: Color.fromRGBO(125, 96, 161, 1),
                width: 2.0,
              ),
              backgroundColor: Colors.transparent,
            ),
            onPressed: () {
              print('Learn More apertado');
            },
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Learn More',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), 
              ),
              side: const BorderSide(
                color: Color.fromRGBO(125, 96, 161, 1),
                width: 2.0,
              ),
              backgroundColor: Colors.transparent,
            ),
            onPressed: () {
              print('Login apertado');
            },
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}