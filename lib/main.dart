import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: DataTable(
          sortColumnIndex: 0,
          sortAscending: true,
          columns: [
              DataColumn(
                label: Text("Title 1"),
              ),
              DataColumn(
                label: Text("Title 2"),
              ),
              DataColumn(
                label: Text("Title 3"),
              )
          ],
          rows: [
            DataRow(
                cells: [
                  DataCell(
                    Text("Real"),
                  ),
                  DataCell(
                    Text("Real"),
                  ),
                  DataCell(
                    Text("Real"),
                  ),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(
                    Text("Real"),
                  ),
                  DataCell(
                    Text("Real"),
                  ),
                  DataCell(
                    Text("Real"),
                  ),
                ]
            ),
      ]),
    ));
  }
}
