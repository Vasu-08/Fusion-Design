import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: [
                  const Card(
                    color: Colors.blueAccent,
                    margin:
                        const EdgeInsets.symmetric(vertical: 20.0, horizontal: 110.0),
                    // padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text('Select Date'),
                    ),
                  ),

                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: const [
                              Text('Breakfast'),
                            ],
                          ),

                          Divider(height: 10.0),
                          Row(
                            children: [
                              Container(
                                color: Colors.grey,
                                height: 300.0,
                                width: 100.0,
                                child: Center(child: Text('Dummy Text')),
                              )
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Lunch'),
                            ],
                          ),
                          Divider(height: 10.0),
                          Row(
                            children: [
                              Container(
                                color: Colors.grey,
                                height: 300.0,
                                width: 100.0,
                                child: Center(child: Text('Dummy Text')),
                              )
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Dinner'),
                            ],
                          ),
                          Divider(height: 10.0),
                          Row(
                            children: [
                              Container(
                                color: Colors.grey,
                                height: 300.0,
                                width: 100.0,
                                child: Center(child: Text('Dummy Text')),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
