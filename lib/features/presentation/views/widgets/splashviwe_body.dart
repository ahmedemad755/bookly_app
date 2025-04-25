import 'package:flutter/material.dart';

class SplashviweBody extends StatelessWidget {
  const SplashviweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Bookly App",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text("read free books"),
        ],
      ),
    );
  }
}
