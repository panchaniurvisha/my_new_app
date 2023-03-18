import 'package:flutter/material.dart';

class GridViewBuilder extends StatefulWidget {
  const GridViewBuilder({Key? key}) : super(key: key);

  @override
  State<GridViewBuilder> createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid_View'),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        shrinkWrap: true,
        //scrollDirection: Axis.vertical,
        /*gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 4,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          //mainAxisExtent: 50,
        ),*/
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 10,
            //mainAxisExtent: 50,
            childAspectRatio: 1),
        itemBuilder: (context, index) => Container(
          color: index % 2 == 0 ? Colors.lightGreen : Colors.redAccent,
        ),
        itemCount: 11,
      ),
    );
  }
}
