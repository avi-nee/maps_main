import 'package:flutter/material.dart';
import 'category.dart';

class TaxDetail extends StatefulWidget {
  final Category category;

  const TaxDetail({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  State<TaxDetail> createState() {
    return _TaxDetailState();
  }
}

class _TaxDetailState extends State<TaxDetail> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 215, 145),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 137, 100),
          title: Text(widget.category.label),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return (const Text('Text detected'));
                              },
                            ),
                          );
                        },
                        child: const Card(
                          color: Colors.greenAccent,
                          elevation: 2.0,
                          child: SizedBox(
                            height: 180,
                            width: 180,
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Center(
                                    child: Center(
                                      child: Text(
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                          'Cases pending'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: Center(
                                      child: Text(
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                          'XX'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return (const Text('Text detected'));
                              },
                            ),
                          );
                        },
                        child: const Card(
                          color: Colors.greenAccent,
                          elevation: 2.0,
                          child: SizedBox(
                            height: 180,
                            width: 180,
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                        'Cases disposed'),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: Text(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                        'XX'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return (const Text('Text detected'));
                              },
                            ),
                          );
                        },
                        child: const Card(
                          color:Colors.greenAccent,
                          elevation: 2.0,
                          child: SizedBox(
                            height: 180,
                            width: 180,
                            child: Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                        'Cases received'),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: Text(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                        'XX'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text(
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      'Case Decisions'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return (const Text('Text detected'));
                              },
                            ),
                          );
                        },
                        child: const Card(
                          color:Colors.green,
                          elevation: 2.0,
                          child: SizedBox(
                            height: 60,
                            width: 80,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    'Allowed'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return (const Text('Text detected'));
                              },
                            ),
                          );
                        },
                        child: const Card(
                          color: Colors.redAccent,
                          elevation: 2.0,
                          child: SizedBox(
                            height: 60,
                            width: 80,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    'Rejected'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return (const Text('Text detected'));
                              },
                            ),
                          );
                        },
                        child: const Card(
                          color:Colors.yellow,
                          elevation: 2.0,
                          child: SizedBox(
                            height: 60,
                            width: 80,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    'Partially Allowed'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return (const Text('Text detected'));
                              },
                            ),
                          );
                        },
                        child: const Card(
                          color:Colors.blueAccent,
                          elevation: 2.0,
                          child: SizedBox(
                            height: 60,
                            width: 80,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    'Remand'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
