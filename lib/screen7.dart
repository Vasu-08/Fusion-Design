import 'package:flutter/material.dart';

class Mapp extends StatelessWidget {
  const Mapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: const [
                  Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Spacer(),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Spacer(),
                  Text(
                    'Bill',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Spacer(),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Spacer(),
                  Text(
                    'Register for Mess',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90),
              child: Table(
                border: TableBorder.all(width: 3, color: Colors.black),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Month',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'M.Bill',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Rebate Count',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Rebate Amount',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'N.v eg',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Total',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //r2
                  const TableRow(
                    children: <Widget>[
                      CTableCell(value: 'January 2023'),
                      CTableCell(value: '12000'),
                      CTableCell(value: '0'),
                      CTableCell(value: '0'),
                      CTableCell(value: '0'),
                      CTableCell(value: '12000'),
                    ],
                  ),

                  //r3
                  const TableRow(
                    children: <Widget>[
                      CTableCell(value: 'February 2023'),
                      CTableCell(value: '12000'),
                      CTableCell(value: '0'),
                      CTableCell(value: '0'),
                      CTableCell(value: '0'),
                      CTableCell(value: '12000'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[350],
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white10,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CTableCell extends StatelessWidget {
  const CTableCell({Key? key, required this.value}) : super(key: key);
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      color: Colors.grey,
      child: Center(
        child: Text(
          value,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
