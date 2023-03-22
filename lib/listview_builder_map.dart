import 'package:flutter/material.dart';

class ListViewBuilderMap extends StatefulWidget {
  const ListViewBuilderMap({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderMap> createState() => _ListViewBuilderMapState();
}

class _ListViewBuilderMapState extends State<ListViewBuilderMap> {
  final List<Map> listData = [
    {
      "text": "Urvi",
      "type": Icons.account_balance_rounded,
    },
    {
      "text": "vaidehi",
      "type": Icons.add_a_photo,
    },
    {
      "text": "skillqode",
      "type": Icons.add_call,
    },
    {
      "text": "harshil",
      "type": Icons.accessible_rounded,
    },
    {
      "text": "piyush",
      "type": Icons.account_circle_sharp,
    },
    {
      "text": "rinkal",
      "type": Icons.access_alarm,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview_builder_map'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => index % 2 == 0
            ? const SizedBox(
                height: 15,
              )
            : Container(
                height: 15,
                color: Colors.red,
              ),
        itemBuilder: (context, index) => Container(
          height: 60,
          color: index % 2 == 0 ? Colors.amber : Colors.indigoAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(listData[index]["text"],
                  style: const TextStyle(
                    fontSize: 20,
                  )),
              Icon(listData[index]["type"]),
            ],
          ),
        ),
        itemCount: listData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
