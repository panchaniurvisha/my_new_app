import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Table",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Table(
          defaultColumnWidth: const FixedColumnWidth(100),
          border: TableBorder.all(
              color: Colors.black, style: BorderStyle.solid, width: 2),
          children: const [
            TableRow(children: [
              Text("1", textAlign: TextAlign.center),
              Icon(Icons.account_balance)
            ]),
            TableRow(children: [
              Text("2", textAlign: TextAlign.center),
              Icon(Icons.account_balance)
            ]),
            TableRow(children: [
              Text("3", textAlign: TextAlign.center),
              Icon(Icons.account_balance)
            ]),
            TableRow(children: [
              Text("4", textAlign: TextAlign.center),
              Icon(Icons.account_balance)
            ]),
          ],
        ),
        DataTable(
          columnSpacing: 100,
          columns: const [
            DataColumn(
                label: Text('ID',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Name',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Profession',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('5')),
              DataCell(Text('John')),
              DataCell(Text('Student')),
            ]),
            DataRow(cells: [
              DataCell(Text('10')),
              DataCell(Text('Harry')),
              DataCell(Text('Leader')),
            ]),
            DataRow(cells: [
              DataCell(Text('15')),
              DataCell(Text('Peter')),
              DataCell(Text('Scientist')),
            ]),
          ],
        ),
      ]),
    );
  }
}
