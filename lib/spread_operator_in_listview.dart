import 'package:flutter/material.dart';

class SpreadOperatorInListView extends StatefulWidget {
  const SpreadOperatorInListView({super.key});

  @override
  State<SpreadOperatorInListView> createState() =>
      _SpreadOperatorInListViewState();
}

class _SpreadOperatorInListViewState extends State<SpreadOperatorInListView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList1 = [
      const ListTile(title: Text('Item 1')),
      const ListTile(title: Text('Item 2')),
      const ListTile(title: Text('Item 3')),
    ];
    List<Widget> myList2 = [
      const ListTile(title: Text('Item 4')),
      const ListTile(title: Text('Item 5')),
      const ListTile(title: Text('Item 6')),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spread Operator"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ...myList1,
          ...myList2,
          const ListTile(title: Text("Item 7"))
        ],
      ),
    );
  }
}
