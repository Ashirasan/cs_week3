import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  String _output = '';
  final _input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical:5,horizontal: 15),
              // color: Colors.yellow,
              child: Column(
                children: [
                  const Center(
                    child: Text('Welcome to WelcomePage'),
                  ),
                  const Text('EIEI WELCOME PAGE'),
                  TextField(controller: _input,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Name',
                    labelText: 'Enter Name',
                  ),),
                  const SizedBox(height: 5,),
                  Text(_output,style: const TextStyle(fontSize: 20),),
                ],
              )),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(onPressed: () {
            debugPrint('Pressed');
            String ipt = _input.text;
            setState(() {
              _output = ipt;
            });
          }, child: const Text('Let GO')),
        ],
      ),
    );
  }
}
