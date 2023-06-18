import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);
  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool radioData = true;
  bool switchValue = false;
  //Initial radio list tile value
  int radioListData = 4;
  List<int> radioListItems = [
    1,
    2,
    3,
    4,
  ];
  List<Map> radioListOfData = [
    {
      "index": 1,
      "name": "urvisha",
      "color": "red",
    },
    {
      "index": 2,
      "name": "piyush",
      "color": "yellow",
    },
    {"index": 3, "name": "vaidu", "color": "purple"},
    {"index": 4, "name": "hinal", "color": "orange"},
    {
      "index": 5,
      "name": "rinkal",
      "color": "green",
    },
    {"index": 6, "name": "abhay", "color": "red"},
    {"index": 7, "name": "sweta", "color": "black"},
    {"index": 8, "name": "dinal", "color": "blue"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Button Screen")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const BackButton(),
                const CloseButton(),
                TextButton(
                  onPressed: () {
                    debugPrint("text button");
                  },
                  child: Text("urvi"),
                ),
                OutlinedButton(
                  onPressed: () {
                    debugPrint("outlinebutton=========>");
                  },
                  child: Container(
                    width: 10,
                  ),
                ),
              ],
            ),
            Radio(
              value: radioData,
              groupValue: radioData,
              onChanged: (value) {
                debugPrint("value--->$value");
                radioData = true;
                setState(() {});
              },
            ),
            Radio(
              value: radioData,
              groupValue: false,
              onChanged: (value) {
                debugPrint("value--->$value");
                radioData = false;
                setState(() {});
              },
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: radioListItems.length,
              itemBuilder: (context, index) => RadioListTile(
                value: radioListItems[index],
                groupValue: radioListData,
                onChanged: (value) {
                  debugPrint("value-->$value");
                  radioListData = value!;
                  setState(() {});
                },
                title: Text("Number ${radioListItems[index]}"),
              ),
            ),
            Column(
                children: radioListOfData
                    .map((data) => RadioListTile(
                          subtitle: Text(data["name"]),
                          title: Text(data["color"]),
                          value: data["index"],
                          groupValue: radioListData,
                          onChanged: (value) {
                            radioListData = value;
                            setState(() {});
                          },
                        ))
                    .toList()),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    debugPrint("Icon button");
                  },
                  color: Colors.green,
                  splashColor: Colors.red,
                  tooltip: "call",
                  icon: const Icon(Icons.add_call),
                  //padding: EdgeInsets.only(bottom: 20),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint("elevated Button");
              },
              /*style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
                shape: MaterialStateProperty.all(const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
                foregroundColor: MaterialStateProperty.all(Colors.black),
              ),*/
              child: const Text("urvisha"),
            ),
            Transform.scale(
              //size increase button
              scale: 2,
              child: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  checkColor: Colors.amber,
                  activeColor: Colors.red,
                  value: switchValue,
                  onChanged: (value) {
                    debugPrint("value--->$value");
                    switchValue = value!;
                    setState(() {});
                  }),
            ),
            CupertinoSwitch(
              value: switchValue,
              trackColor: Colors.black,
              activeColor: Colors.red,
              thumbColor: Colors.amberAccent,
              onChanged: (value) {
                debugPrint("value---->$value");

                switchValue = value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FloatingActionButton --------------------->>> ");
        },
        tooltip: "12354",
        //mini: false,

        splashColor: Colors.purple,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,

        //hoverColor: Colors.yellow,
        elevation: 0,
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.black, width: 2)),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Container(
          height: 50,
        ),
      ),
    );
  }
}
