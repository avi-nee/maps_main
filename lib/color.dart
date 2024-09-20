import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({super.key});
  
  @override
  State<ColorSelector> createState() => _ColorSelector();
}


class _ColorSelector extends State<ColorSelector> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 215, 145),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 137, 100),
        title: const Text('Search Appeal'),
      ),
      body: const SafeArea(child: Text('Search')),
      );
  }}