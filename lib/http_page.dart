import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  const HttpPage({super.key});

  @override
  State<HttpPage> createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  Future<String> fetchData() async{
    var res = await http.get(Uri.parse('https://itpart.net/mobile/api/product3.php'));
    if(res.statusCode == 200){
      String strBody = res.body.toString();
      debugPrint(strBody);
      return strBody;
    }else{
      throw Exception('');
    }
    
  }
  @override
  Widget build(BuildContext context) {
    fetchData();
    return Scaffold(
      appBar: AppBar(title: Text('HTTP Page'),),
      body: Center(
        child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('Result: ${snapshot.data}',
                    style: TextStyle(fontSize: 20));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
      ),
    );
  }
}