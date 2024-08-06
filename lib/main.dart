import 'package:flutter/material.dart';
import 'package:flutter_provider/provider.dart';
import 'package:flutter_provider/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ChangeNotifierProvider(create: (context) => ColorProvider(), child: const HomeScreen()),
    );
  }
}
