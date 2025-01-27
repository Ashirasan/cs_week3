import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});
  final List<String> allList = <String>['list1', 'list2', 'list3', 'list4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        body: ListView.separated(
            itemCount: allList.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(allList[index]),
              
            ),
            separatorBuilder: (context, index) => Divider(),
          ));
  }
}
