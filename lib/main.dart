import 'package:flutter/material.dart';
import 'package:maps_main/dispose_appeal.dart';
import 'category.dart';
import 'tax_detail.dart';
import 'new_appeal.dart';
import 'search_appeal.dart';
import 'appeal_report.dart';

void main() {
  runApp(const Appeal());
}

class Appeal extends StatelessWidget {
  const Appeal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'MAPS',
      theme: theme.copyWith(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 50, 218, 137)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Management of Appeals (MAPS)'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 215, 145),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 137, 100),
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: Category.samples.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TaxDetail(
                              category: Category.samples[index],
                            );
                          },
                        ),
                      );
                    },
                    child: buildCategoryCard(Category.samples[index]),
                  );
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              style: const ButtonStyle(
                               // backgroundColor: MaterialStatePropertyAll(Colors.yellowAccent),
                                //side: MaterialStatePropertyAll()
                              ),
                              icon: const Icon(Icons.add),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const NewAppeal();
                                  },
                                ));
                              }),
                          const Text('Add'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: const Icon(Icons.remove),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const DisposeAppeal();
                                  },
                                ));
                              }),
                          const Text('Dispose'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: const Icon(Icons.search_outlined),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const SearchAppeal();
                                  },
                                ));
                              }),
                          const Text('Search'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: const Icon(Icons.align_vertical_bottom_rounded),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const AppealReport();
                                  },
                                ));
                              }),
                          const Text('Report'),
                        ],
                      ),
                    ]),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryCard(Category category) {
    return Card(
      color: Colors.greenAccent,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          children: <Widget>[
            Text(
              category.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
