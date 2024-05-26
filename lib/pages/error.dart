import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.shadow,
                          blurRadius: 4.0,
                          spreadRadius: 1.0,
                          offset: const Offset(0, 0)
                        )
                      ],
                      shape: BoxShape.circle
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset('assets/img/personal/error.jpg',
                      width: 400,
                      height: 400,
                      fit: BoxFit.cover
                    ),
                  ),
                )
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("It seems you've encountered an error. Please try again, or contact me if the issue persists.",
                  style: TextStyle(
                    color: theme.colorScheme.onPrimary
                  )
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}