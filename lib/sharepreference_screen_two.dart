import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceScreenTwo extends StatefulWidget {
  const SharePreferenceScreenTwo({super.key});

  @override
  State<SharePreferenceScreenTwo> createState() =>
      _SharePreferenceScreenTwoState();
}

class _SharePreferenceScreenTwoState extends State<SharePreferenceScreenTwo> {
  TextEditingController nameController = TextEditingController();
  SharedPreferences? prefs;
  var nameValue = "No Value Saved";
  static const String keyName = "name";

  createInstance() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    // TODO: implement initState
    createInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                prefs!.clear();
                setState(() {});
              },
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
          ),
        ),
        OutlinedButton(
            onPressed: () {
              prefs!.setString(keyName, nameController.text);
            },
            child: const Text("save",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
        OutlinedButton(
            onPressed: () {
              var getName = prefs!.getString(keyName);
              setState(() {
                nameValue = getName ?? "No Value Saved";
              });
            },
            child: const Text("getValue",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
        Text(nameValue),
      ],
    ));
  }
}
