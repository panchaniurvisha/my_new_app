import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppAlertDialogBoxSnackBar extends StatelessWidget {
  const AppAlertDialogBoxSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("AlertDialogBox")),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      title: const Text("Alert Dialog Box"),
                      content: const Text("you have raised a alert dialogbox"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              color: Colors.black,
                              padding: const EdgeInsets.all(10),
                              child: const Text("okay"),
                            ))
                      ],
                    ),
                  );
                },
                child: const Text("show alert box")),
            ElevatedButton(
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: const Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            child: const Text("CANCEL"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            child: const Text("MAY BE"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                        content: const Text("An iOS-style alert dialog." +
                            "An alert dialog informs the user about situations that require acknowledgement."
                                " An alert dialog has an optional title, optional content, and an optional list of actions."),
                        title: Column(
                          children: const [
                            Text("CupertinoAlertDialog"),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ) //Text("Alert Dialog Box"),

                        ),
                  );
                },
                child: const Text("cupertino alert box")),
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(

                    content: const Text("Yay! A SnackBar!"),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("Show SnackBar"))
          ],
        ),
      ),
    );
  }
}
