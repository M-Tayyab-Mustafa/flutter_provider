import 'package:flutter/material.dart';
import 'package:flutter_provider/provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var color = context.read<ColorProvider>();
    return Scaffold(
      body: Center(
        child: Consumer<ColorProvider>(
          builder: (context, snapShot, child) {
            return Container(
              color: snapShot.color,
              child: Center(
                child: ElevatedButton(
                  onPressed: () => context.read<ColorProvider>().changeColor(),
                  child: const Text('Change Color'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
