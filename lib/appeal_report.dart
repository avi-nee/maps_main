import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class AppealReport extends StatefulWidget {
  const AppealReport({super.key});

  @override
  State<AppealReport> createState() => _AppealReport();
}


class _AppealReport extends State<AppealReport> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 215, 145),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 137, 100),
        title: const Text('Appeal Reports'),
      ),
      body: const SafeArea(child: Text('Report')),
      );
  }}