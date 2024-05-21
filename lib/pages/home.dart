import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Constantly Innovating. Constantly Improving.',
              style: TextStyle(
                fontWeight: FontWeight.bold
              )
            ),
            Text("Technology doesn't wait. Neither should you.",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              )
            ),
          ],
        ),
      ),
    );
  }
}