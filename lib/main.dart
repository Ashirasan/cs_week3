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
              'POP CAT',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.airplanemode_inactive_sharp)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.wifi_lock_rounded))
            ],
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
              // Image.asset('assets/images/cat.jpg'),
              Image.asset('assets/images/pop-cat.gif'),
              const SizedBox(
                height: 15,
              ),
              const Text('ขอบคุณที่ใช้บริการ',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text('เรายินดีที่ได้ร่วมเป็นส่วนหนึ่งในการเดินทางของคุณ',
                  style: TextStyle(
                    fontSize: 15,
                  )),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    'สรุปรายละเอียดการชาร์จ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_month),
                          const Text('วันที่ชาร์จ')
                        ],
                      ),
                      const Text('9 กันยายน 2566'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.ev_station),
                          const Text('สถาณีชาร์จ')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("PEA"),
                          Text('1212#1'),
                        ],
                      )
                    ],
                  )
                ],
              )
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
