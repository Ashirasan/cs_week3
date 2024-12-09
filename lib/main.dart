import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.green),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'APP BAR',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.airplanemode_inactive_sharp)),IconButton(onPressed: (){}, icon:const Icon(Icons.wifi_lock_rounded))],
          ),
          body: Column(
            children: [
              const Text(
                'Achirawit',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'Boontaeng',
                style: TextStyle(fontSize: 20),
              ),
              Image.network('https.://picsum.photos/250?image=9'),
              ElevatedButton(
                  onPressed: () {
                    print("Click me ");
                  },
                  style: ButtonStyle(),
                  child: const Text(
                    'click Me',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint('FAB pressed');
            },
            child: const Icon(Icons.access_alarm),
          )),
    );
  }
}
