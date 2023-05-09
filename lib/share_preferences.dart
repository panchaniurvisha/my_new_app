import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreference extends StatefulWidget {
  const SharePreference({Key? key}) : super(key: key);

  @override
  State<SharePreference> createState() => _SharePreferenceState();
}

class _SharePreferenceState extends State<SharePreference> {
  final nameController = TextEditingController();
  static const String keyName = "name";
  var nameValue = "No Value Saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sharepreference"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          ElevatedButton(
              onPressed: () async {
                var prefers = await SharedPreferences.getInstance();
                prefers.setString(keyName, nameController.text.toString());
              },
              child: const Text("save")),
          const SizedBox(
            height: 11,
          ),
          Text(nameValue),
        ],
      ),
    );
  }

  Future<void> getValue() async {
    var prefers = await SharedPreferences.getInstance();
    var getName = prefers.getString(keyName);
    nameValue = getName ?? "no Value Saved";
    setState(() {});
  }
}
