import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({super.key, required this.onPressed, required this.isLoading});

  Function? onPressed;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: onPressed != null ? Colors.purple : Colors.purple[200],
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(
              color: Colors.white,
            ))
          : TextButton(
              onPressed: () {
                onPressed!();
              },
              child: const Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
    );
  }
}
