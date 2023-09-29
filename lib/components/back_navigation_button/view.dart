import 'package:flutter/material.dart';

class BackNavigationButton extends StatelessWidget {
  const BackNavigationButton({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
              size: 14,
            ),
            Text(
              label,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
