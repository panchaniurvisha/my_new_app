import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String dropDownData = "Hello 3";
  List<Map> dropDownList = [
    {
      "value": "Hello 1",
      "data": "urvi",
    },
    {
      "value": "Hello 2",
      "data": "piyush",
    },
    {
      "value": "Hello 3",
      "data": "harshil",
    },
    {
      "value": "Hello 4",
      "data": "jigar",
    },
    {
      "value": "Hello 5",
      "data": "jay",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              value: dropDownData,
              isExpanded: true,
              items: dropDownList
                  .map(
                    (value) => DropdownMenuItem(
                      value: value['value'],
                      child: Text(value['data']),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                debugPrint(value.toString());
                dropDownData = value.toString();
                setState(() {});
              },
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: const [
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text("Get The App")
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 65,
                  child: Row(
                    children: const [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(width: 10),
                      Text("About")
                    ],
                  ),
                ),
              ],
              offset: const Offset(0, 100),
              color: Colors.red,
              elevation: 10,
              onSelected: (value) {
                debugPrint(value.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
