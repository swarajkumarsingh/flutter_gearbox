import 'package:flutter/material.dart';
import 'package:flutter_gearbox/flutter_gearbox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.backspace),
          onPressed: () {
            appRouter.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
