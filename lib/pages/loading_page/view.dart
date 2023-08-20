import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: SizedBox(
            width: 80,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const Image(
                image: AssetImage('assets/images/icon.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
}
