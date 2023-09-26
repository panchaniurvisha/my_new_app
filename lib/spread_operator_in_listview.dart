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
      SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: const ListTile(
          title: Text('Item 1'),
        ),
      ),
      SizedBox(
          width: MediaQuery.of(context).size.width / 5,
          child: const ListTile(title: Text('Item 2'))),
      SizedBox(
          width: MediaQuery.of(context).size.width / 5,
          child: const ListTile(title: Text('Item 3'))),
    ];
    List<Widget> myList2 = [
      SizedBox(
          width: MediaQuery.of(context).size.width / 5,
          child: const ListTile(title: Text('Item 4'))),
      SizedBox(
          width: MediaQuery.of(context).size.width / 5,
          child: const ListTile(title: Text('Item 5'))),
      SizedBox(
          width: MediaQuery.of(context).size.width / 5,
          child: const ListTile(title: Text('Item 6'))),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spread Operator"),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            ...myList1,
            ...myList2,
            SizedBox(
              width: MediaQuery.of(context).size.width / 5,
              child: ListTile(
                title: Text("Item 7"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
