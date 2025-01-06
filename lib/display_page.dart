import 'package:cs_week3/welcome_page.dart';
import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  final String? name;
  final int? age;
  const DisplayPage({super.key,this.name,this.age});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Page'),
      ),
      body: Column(
        children: [
          // const Text('HI'),
          Text(widget.name!),
          // Text(widget.age!.toString()),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>WelcomePage()), (route)=>false);
          }, child: const Text('Logout')),
        ],
      ),
    );
  }
}