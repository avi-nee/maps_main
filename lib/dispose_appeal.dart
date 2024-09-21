import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class DisposeAppeal extends StatefulWidget {
  const DisposeAppeal({super.key});

  @override
  State<DisposeAppeal> createState() => _DisposeAppeal();
}


class _DisposeAppeal extends State<DisposeAppeal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 215, 145),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 137, 100),
        title: const Text('Dispose Appeal'),
      ),
      body: const SafeArea(child: Text('Dispose')),
      );
  }}