import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TAB BAR EXAMPLE'),
          bottom: TabBar(
              indicatorPadding: const EdgeInsets.all(0),
              indicator: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
                color: Colors.pinkAccent,
              ),
              unselectedLabelColor: Colors.deepPurpleAccent,
              labelColor: Colors.black,
              indicatorColor: Colors.cyanAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              //indicatorWeight: 10,
              labelStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
              overlayColor: const MaterialStatePropertyAll(Colors.greenAccent),
              isScrollable: true,
              physics: const BouncingScrollPhysics(),
              dragStartBehavior: DragStartBehavior.down,
              //physics: ClampingScrollPhysics(),

              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.import_contacts_sharp,
                    color: Colors.red,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
                Tab(
                  icon: Icon(
                    Icons.adb,
                    color: Colors.black,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
                Tab(
                  icon: Icon(
                    Icons.add_a_photo,
                    color: Colors.pink,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
                Tab(
                  icon: Icon(
                    Icons.import_contacts_sharp,
                    color: Colors.red,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
                Tab(
                  icon: Icon(
                    Icons.adb,
                    color: Colors.black,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
                Tab(
                  icon: Icon(
                    Icons.add_a_photo,
                    color: Colors.pink,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
                Tab(
                  icon: Icon(
                    Icons.import_contacts_sharp,
                    color: Colors.red,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
                Tab(
                  icon: Icon(
                    Icons.adb,
                    color: Colors.black,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
                Tab(
                  icon: Icon(
                    Icons.add_a_photo,
                    color: Colors.pink,
                    size: 15,
                  ),
                  text: 'sharp',
                ),
              ]),
        ),
        body: const TabBarView(
            //physics: BouncingScrollPhysics(),
            children: [
              Icon(
                Icons.import_contacts_sharp,
              ),
              Icon(Icons.adb),
              Icon(Icons.add_a_photo),
              Icon(
                Icons.import_contacts_sharp,
              ),
              Icon(Icons.adb),
              Icon(Icons.add_a_photo),
              Icon(
                Icons.import_contacts_sharp,
              ),
              Icon(Icons.adb),
              Icon(Icons.add_a_photo),
            ]),
      ),
    );
  }
}
