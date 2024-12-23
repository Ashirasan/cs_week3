import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String chargingPower = '';
  String chargingTime = '';
  final bc = TextEditingController();
  final ef = TextEditingController();
  final vt = TextEditingController();
  final tSoc = TextEditingController();
  final cSoc = TextEditingController();
  final cr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'EV Application',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
        ),
        body: Column(
          children: [
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
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(Icons.battery_0_bar),
                            const Expanded(child: Text('Battery Capacity (kWh)')),
                            Expanded(
                                child: TextField(
                              controller: bc,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(Icons.bolt),
                            const Expanded(child: Text('Efficiency')),
                            Expanded(
                                child: TextField(
                              controller: ef,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ))
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
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
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(Icons.battery_0_bar),
                            const Expanded(child: Text('Voltage(V)')),
                            Expanded(
                                child: TextField(
                              controller: vt,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
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
                        child: TextField(
                          controller: cSoc,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Current SOC%'),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: TextField(
                          controller: tSoc,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Target SOC%'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: cr,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Charge rate A'),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(Icons.battery_0_bar),
                            const Expanded(child: Text('Charging Power(Wh)')),
                            Expanded(child: Text(chargingPower)),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(Icons.bolt),
                            const Expanded(child: Text('Charging Time(hrs)')),
                            Expanded(child: Text(chargingTime)),
                          ],
                        ),
                      ],
                    )),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            double d_bc = double.parse(bc.text);
            double d_ef = double.parse(ef.text);
            double d_vt = double.parse(vt.text);
            double d_tSoc = double.parse(tSoc.text);
            double d_cSoc = double.parse(cSoc.text);
            double d_cr = double.parse(cr.text);

            double cp = (d_vt * d_cr) / 1000;
            double ct = (d_tSoc - d_cSoc) * d_bc / 100 / (cp * d_ef);

            chargingPower = cp.toStringAsFixed(4);
            chargingTime = ct.toStringAsFixed(4);
            debugPrint(chargingPower);
            debugPrint(chargingTime);
            setState(() {
              chargingPower = cp.toStringAsFixed(4);
              chargingTime = ct.toStringAsFixed(4);
            });
          },
          child: const Text('GO'),
        ));
  }
}
