import 'package:cs_week3/about_page.dart';
import 'package:cs_week3/detail_page.dart';
import 'package:cs_week3/display_page.dart';
import 'package:cs_week3/my_listpage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = '';
  final _name = TextEditingController();
  final _age = TextEditingController();
  int productnum = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              // color: Colors.yellow,
              child: Column(
                children: [
                  const Center(
                    child: Text('Welcome to WelcomePage'),
                  ),
                  const Text('EIEI WELCOME PAGE'),
                  TextField(
                    controller: _name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Name',
                      labelText: 'Enter Name',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _age,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Age',
                      labelText: 'Enter Your Age',
                    ),
                  ),
                  Text(
                    _output,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              )),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
              onPressed: () {
                debugPrint('Pressed');
                String ipt = _name.text;
                setState(() {
                  _output = ipt;
                });
              },
              child: const Text('Let GO')),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>AboutPage()));
                Navigator.pushNamed(context, '/aboutpage');
              },
              child: const Text('Go to Ev calculator')),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayPage(name: _name.text,age: 21,)));
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayPage(
                              name: _name.text,
                              age: 21,
                            )),
                    (route) => false);
              },
              child: const Text('Display page')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listpage');
              },
              child: Text('List Page')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/futurepage');
              },
              child: Text('Future Page')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/httppage');
              },
              child: Text('Http Page')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>const DetailPage(
                              productId: 1,
                            )));
              },
              child: Text('Detail Page 1')),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> const MyListPage()));
          }, child: Text("My List Page")),
          // ListView.builder(itemBuilder: (context,index)=>Text(index.toString()),itemCount: 2,)
        ],
      ),
    );
  }
}
