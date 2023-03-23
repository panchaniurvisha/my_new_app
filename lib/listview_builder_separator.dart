import 'package:flutter/material.dart';

class ListViewBuilderSeparator extends StatefulWidget {
  const ListViewBuilderSeparator({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderSeparator> createState() =>
      _ListViewBuilderSeparatorState();
}

class _ListViewBuilderSeparatorState extends State<ListViewBuilderSeparator> {
  final List<String> listData = [
    'Urvisha',
    'jay',
    'Harshil',
    'jigar',
    'rytvi',
    'rinkal',
    'skill-quode',
    'kitkat',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView build_separateScreen"),
      ),
      /* body: ListView.builder(
        //scrollDirection: Axis.vertical,
        itemCount: listData.length,
        itemBuilder: (context, index) => Container(
          height: 120,
          color: index == 1 || index == 3 || index == 5
              ? Colors.deepOrange
              : index == 2 || index == 4 || index == 7
                  ? Colors.blue
                  : Colors.orangeAccent,
          child: Text(
            listData[index],
            style: TextStyle(
                fontSize: 22,
                color: index == 2 || index == 4 || index == 6
                    ? Colors.amberAccent
                    : Colors.black),
          ),
        ),
      ),*/
      body: ListView.separated(
        itemCount: listData.length,
        separatorBuilder: (context, index) => index % 2 == 0
            ? const SizedBox(
                height: 50,
                child: ColoredBox(
                  color: Colors.white,
                ),
              )
            : Container(
                height: 50,
                color: Colors.black,
                child: Text(
                  "Index: $index",
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
        itemBuilder: (context, index) => Container(
          height: 100,
          color: index == 3 || index == 5 || index == 7
              ? Colors.blue
              : index == 1 || index == 4
                  ? Colors.red
                  : Colors.orangeAccent,
          child: Text(
            listData[index],
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
