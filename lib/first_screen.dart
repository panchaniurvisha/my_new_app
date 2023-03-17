import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        //drawerEnableOpenDragGesture: true,
        //endDrawerEnableOpenDragGesture: true,
        //drawerDragStartBehavior: DragStartBehavior.start,
        //drawerEdgeDragWidth: 5,
        //drawerScrimColor: Colors.deepPurpleAccent,
        //bottomNavigationBar:const Icon(Icons.abc_rounded),
        appBar: AppBar(
          title: const Text(
            "Drawer Demo",
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 30, color: Colors.black),
          ),
          centerTitle: true,
          elevation: 100,
          backgroundColor: Colors.greenAccent,
          titleSpacing: 20,
        ),
        /*drawer: Container(
          //margin: const EdgeInsets.all(5),
          //padding: const EdgeInsets.all(5),
          //alignment: Alignment.center,
          height: 600,
          width: 200,
          color: Colors.black,
        ),
        endDrawer: Container(
          height: 600,
          width: 200,
          color: Colors.redAccent,
        ),*/
        body: Center(
          child: Container(
            //margin: const EdgeInsets.all(5),
            //padding: const EdgeInsets.all(5),
            //alignment: Alignment.center,
            //height: MediaQuery.of(context).size.height * 0.7,
            //width: MediaQuery.of(context).size.width * 0.9,
            //color: Colors.black,
            decoration: const BoxDecoration(
                //border: Border.all(color: Colors.lightBlue.shade50, width: 10),

                //color: Colors.red,

                /*boxShadow: const [
                      BoxShadow(
                        color: Colors.yellowAccent,
                        blurRadius: 40,
                        spreadRadius: 50,
                        offset: Offset(50, 5),
                      )
                    ],*/
                //borderRadius: BorderRadius.circular(20),
                /*gradient: RadialGradient(
                  colors: [Colors.white60, Colors.teal, Colors.black45],
                  radius: 0.8,
                  stops: [0.25, 0.75, 0.90],
                  focal: Alignment.centerLeft,
                  tileMode: TileMode.repeated,
                  center: Alignment.center),*/
                /*gradient: SweepGradient(
              colors: [
                Colors.red,
                Colors.yellow,
                Colors.blue,
                Colors.green,
              ],
              stops: <double>[
                0.00,
                0.25,
                0.5,
                0.75,
              ],
              center: Alignment.center,
              tileMode: TileMode.clamp,
            )),*/

                /*gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.blueAccent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.4, 0.7],
                  tileMode: TileMode.repeated,

                ),*/
                ),
          ),
        ),

        /*leading: Container(
            color: Colors.red,
            child: const Icon(
              Icons.arrow_back,
              color: Colors.lightGreen,
              size: 40,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size(500,500) ,
            child: Container(
              height: 40,
              width: 40,
              color: Colors.black,
            ),
          ),
          bottomOpacity: 0.40,
          shadowColor: Colors.pink,
          actions: const[
            Icon(Icons.arrow_forward,color: Colors.lightGreen,size: 40,semanticLabel: 'Text to announce in accessibility modes'),
          ],*/

        /* drawer:  Drawer(backgroundColor: Colors.white,
          child:  ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
               const UserAccountsDrawerHeader(
                    accountName: Text('urvashi san',style:TextStyle(/*fontStyle: FontStyle.italic*/fontWeight: FontWeight.bold,  fontFamily: 'MyFont',)),
                    accountEmail: Text("urvi977@gmail.com",style:TextStyle(fontStyle: FontStyle.italic)),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.orange,
                            child: Text(
                              "A",
                              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
             ListTile(
                   leading: const Icon(Icons.home), title: const Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings), title: const Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.contacts), title: const Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
          ]),
      ) ,*/
        /*body: SafeArea(
          //top: false,
          //bottom:false,
          child: Container(
            height: 100,
            width: 100,
            color: const Color(0xFFA02020),
          ),
        ),*/
      ),
    );
  }
}
