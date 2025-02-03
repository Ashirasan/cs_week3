import 'package:cs_week3/services/http_service.dart';
import 'package:flutter/material.dart';

class ProductlistPage extends StatefulWidget {
  const ProductlistPage({super.key});

  @override
  State<ProductlistPage> createState() => _ProductlistPageState();
}

class _ProductlistPageState extends State<ProductlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List'),),
      body: Container(
        child: FutureBuilder(future: HttpService().fetchData(strUrl: strUrl), builder: builder),
      ),
    );
  }
}