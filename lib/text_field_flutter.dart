import 'package:flutter/material.dart';

class TextFieldFlutter extends StatefulWidget {
  const TextFieldFlutter({Key? key}) : super(key: key);

  @override
  State<TextFieldFlutter> createState() => _TextFieldFlutterState();
}

class _TextFieldFlutterState extends State<TextFieldFlutter> {
  FocusNode nodeFirst = FocusNode();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
      ),
      body: Column(
        children: [
          /*  Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                icon: Icon(Icons.import_contacts_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                labelText: 'User Name',
                hintText: 'Enter Your Name',
                prefixIcon: Icon(Icons.cabin_sharp),
                filled: true,
                fillColor: Colors.amber,
              ),
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              focusNode: nodeFirst,
              style: const TextStyle(color: Colors.red),
              //autofocus: true,

              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              cursorWidth: 2,
              cursorColor: Colors.black87,
              cursorHeight: 20,
              //enabled: true,
              obscuringCharacter: "@",
              autocorrect: false,
              enableSuggestions: false,
              //maxLength: 8,

              textDirection: TextDirection.ltr,

              controller: passwordController,
              obscureText: true,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                //enabledBorder: OutlineInputBorder(
                //errorBorder: OutlineInputBorder(
                /*  focusedBorder: OutlineInputBorder(
                  //enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.deepOrange,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),*/
                //InputBorder.none,
                filled: true,
                // fillColor: Colors.amber,
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.amberAccent),
                //contentPadding: EdgeInsets.only(left: 50),
                isDense: true,
                counter: Container(),
                prefixIcon: Icon(Icons.cabin_sharp),
                prefixIconColor: Colors.amber,
                prefixText: "\$",
                prefixStyle: TextStyle(color: Colors.deepPurple),
                suffixIcon: Icon(Icons.access_alarm_outlined),
                suffixIconColor: Colors.amber,
                suffixText: "\$",
                suffixStyle: TextStyle(color: Colors.deepPurple),
                alignLabelWithHint: false,

                //prefixIconConstraints: BoxConstraints.tight(Size(50, 20)),
                hintText: 'Enter Password',
                hintStyle: TextStyle(),
              ),
              onChanged: (value) {
                debugPrint("on changed======>$value");
              },
              onSubmitted: (value) {
                debugPrint("onSubmitted ----->$value");
              },
              onTap: () {
                debugPrint("on tap------>");
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                FocusScope.of(context).requestFocus(nodeFirst);
              },
              child: const Text("Focus on first TextField")),
        ],
      ),
    );
  }
}
