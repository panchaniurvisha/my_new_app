import 'package:flutter/material.dart';

class SilverSppBarSilverList extends StatefulWidget {
  const SilverSppBarSilverList({super.key});

  @override
  State<SilverSppBarSilverList> createState() => _SilverSppBarSilverListState();
}

class _SilverSppBarSilverListState extends State<SilverSppBarSilverList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Sweets",
                ),
                background:
                    Image.asset("assets/images/sweets.jpg", fit: BoxFit.fill),
              ),
              // actions: [
              //   Icon(
              //     Icons.person,
              //     size: 40,
              //   )
              // ],
              expandedHeight: 200,
              //floating:
            ),
            // SliverList(
            //   delegate:  SliverChildBuilderDelegate(
            //     (context, index) => ListTile(
            //       leading: Container(
            //         child: Placeholder(),
            //       )
            //     )
            //   );
            // ),//
          ],
        ),
      ),
    );
  }
  // List buildList(int count){
  //   List<Widget>listItems=List();
  //   for(int i=0;i<count;i++){
  //     listItems.add(Padding(padding: EdgeInsets.all(16),child: Text(
  //       "Sliver items ${i.toString()}",style: TextStyle(
  //       fontSize: 22
  //     ),
  //     ),),);
  //   }
  //   return listItems
  // }
}
