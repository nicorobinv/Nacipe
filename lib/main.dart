import 'package:flutter/material.dart';

void main() {
  runApp(const NacipeApp());
}

class NacipeApp extends StatelessWidget {
  const NacipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'なぴ家のレシピ',
      theme: ThemeData(
        primaryColor: const Color(0x00fee501),
        useMaterial3: true,
      ),
      home: Container(),
    );
  }
}
