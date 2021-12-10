import 'package:flutter/material.dart';

import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  'Flutter Table With List View',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
                  child: ListView.builder(
                    itemCount: studentData.length,
                    itemBuilder: (ctx, index) {
                      return Table(
                        border: TableBorder.symmetric(
                          inside: BorderSide(color: Colors.blue, width: 1),
                          outside: BorderSide(color: Colors.red, width: 1),
                        ),
                        children: [
                          TableRow(children: [
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      studentData[index]['id'].toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                            ),
                            TableCell(
                                child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(studentData[index]['name'].toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                            )),
                            TableCell(
                              child: Text(
                                studentData[index]['phone'].toString(),
                              ),
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Center(
                                child: Text(studentData[index]['roll'].toString()),
                              ),
                            ),
                          ])
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
