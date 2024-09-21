import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class SearchAppeal extends StatefulWidget {
  const SearchAppeal({super.key});

  @override
  State<SearchAppeal> createState() => _SearchAppeal();
}
// TextEditingController appealdateCtl = TextEditingController();
// TextEditingController oiodateCtl = TextEditingController();

class _SearchAppeal extends State<SearchAppeal> {
  //String dropdowntaxvalue = 'CEX';
  String dropdownvalue = '-Select an item-';
  //final _formKey = GlobalKey<FormState>();
  var searchtype = [
    '-Select an item-',
    'Appeal no.',
    'Name',
    'Jurisdiction',
    'OIO',
    'OIA',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 215, 145),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 137, 100),
        title: const Text('Search Appeal'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text('Search by',
                  style: TextStyle(
                    fontSize: 20,
                  )),
              DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Choose your search',
                    ),
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: searchtype.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        dropdownvalue = value!;
                      });
                    }),
              
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input search item',
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent),
                      side: const MaterialStatePropertyAll(
                          BorderSide(color: Colors.black))),
                  onPressed: () {},
                  child: const Text('Search'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
