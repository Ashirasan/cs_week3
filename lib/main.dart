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
            'EV Application',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
          // actions: [
          //   IconButton(
          //       onPressed: () {},
          //       icon: const Icon(Icons.airplanemode_inactive_sharp)),
          //   IconButton(
          //       onPressed: () {}, icon: const Icon(Icons.wifi_lock_rounded))
          // ],
        ),
        body: Column(
          children: [
            // const Text(
            //   'POP CAT',
            //   style: TextStyle(fontSize: 20),
            // ),
            // const Text(
            //   'Boontaeng',
            //   style: TextStyle(fontSize: 20),
            // ),
            //Image.network('https://cdn.britannica.com/41/126641-050-E1CA0E61/cat-suns-hill-Parthenon-Athens-Greece-Acropolis.jpg'),
            Image.asset('assets/images/cat.jpg'),
            // Image.asset('assets/images/pop-cat.gif'),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  'Battery Details',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(Icons.battery_0_bar),
                            Expanded(child: Text('Battery Capacity (kWh)')),
                            Expanded(child: SizedBox(height: 45,child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),),),))
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(Icons.bolt),
                            Expanded(child: Text('Efficiency')),
                            Expanded(child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),),))
                          ],
                        ),
                      ],
                    )),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Text(
                      'Charging Details',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(Icons.battery_0_bar),
                            Expanded(child: Text('Voltage(V)')),
                            Text('225'),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(Icons.bolt),
                            Expanded(child: Text('Charging Power(kWh)')),
                            Text('0.84'),
                          ],
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 180,
                        child: const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Current SOC%'),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Target SOC%'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Charge rate A'),
                  ),
                )
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Icon(Icons.heart_broken),
            //     ElevatedButton(
            //         onPressed: () {
            //           print("Click me ");
            //         },
            //         style: ButtonStyle(),
            //         child: const Text(
            //           'click Me',
            //           style: TextStyle(
            //               fontSize: 20, fontWeight: FontWeight.bold),
            //         )),
            //   ],
            // )
            // const TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Name',
            //     hintText: 'Enter name',
            //   ),
            //   autofocus: true,
            // ),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     debugPrint('FAB pressed');
        //   },
        //   child: const Icon(Icons.add_comment),
        // )
      ),
    );
  }
}
