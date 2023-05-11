import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_app/res/constant/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends StatefulWidget {
  const LocalStorage({Key? key}) : super(key: key);

  @override
  State<LocalStorage> createState() => _LocalStorageState();
}

class _LocalStorageState extends State<LocalStorage> {
  SharedPreferences? prefs;

  int count = 0;
  bool repeat = true;
  double decimal = 50.10;
  String action = "";
  List<String> items = [];
  Map<String, dynamic> data = {
    "name": "Urvashi",
    "number": 10,
    "class": 'first',
    "year": 24
  };
  String encodeMap = json.encode(["data"]);

  createInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    createInstance();
    super.initState();
  }

  setData() async {
    prefs!.setInt(Constant.counter, 100);
    prefs!.setBool(Constant.repeat, true);
    prefs!.setDouble(Constant.decimal, 20.50);
    prefs!.setString(Constant.action, "start");
    prefs!.setStringList(
        Constant.items, <String>["Sunday", "Monday", "Tuesday", "Wednesday"]);
    prefs!.setString(Constant.encodeMap, encodeMap);
    debugPrint("Data is Set---->");
  }

  getData() {
    count = prefs!.getInt(Constant.counter)!;
    repeat = prefs!.getBool(Constant.repeat)!;
    action = prefs!.getString(Constant.action)!;
    decimal = prefs!.getDouble(Constant.decimal)!;
    items = prefs!.getStringList(Constant.items)!;
    encodeMap = prefs!.getString(Constant.encodeMap)!;
    Map<dynamic, String> decodeMap = jsonDecode(encodeMap)!;

    setState(() {});

    debugPrint("Data is get---->$count");
    debugPrint("Data is get---->$repeat");
    debugPrint("Data is get---->$action");
    debugPrint("Data is get---->$decimal");
    debugPrint("Data is get---->$items");
    debugPrint("data is get--->$decodeMap");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Storage Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: setData, child: const Text("Set Data")),
            const SizedBox(
              height: 11,
            ),
            ElevatedButton(onPressed: getData, child: const Text("Get Data")),
            Text(
                "Count:$count"
                "\nrepeat:$repeat"
                "\naction:$action"
                "\ndecimal:$decimal"
                "\nitems:$items",
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
