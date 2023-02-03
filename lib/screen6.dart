import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';


class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.black,
            title: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                ))),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: const [
                    Text(
                      'Mess',
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // const CircleAvatar(
                    //   radius: 50.0,
                    //   backgroundImage: AssetImage('images/profile.png'),
                    // ),
                    const Text(
                      'You are already Registered!',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 80.0,
                      width: 150.0,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      // padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.person,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    const Card(
                      // padding: const EdgeInsets.all(10.0),
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.security,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Branch',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      // padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.timelapse_rounded,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Year',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                      width: 150.0,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        // Add login functionality.
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    TextButton(
                      // style: TextButton.styleFrom(
                      //   backgroundColor: Colors.blue,
                      // ),
                      onPressed: () {
                        // Add login functionality.
                      },
                      child: const Text(
                        'Not Registered?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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

