import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var dropdownvalue = 'Academic Module';
  var items = [
    'Academic Module',
    'Programme and Curriculum Module',
    'Gymkhana Module',
    'IWD Module',
    'Library Module',
    'Awards and Scholarships',
    'Complaints Module',
    'Central Mess Module',
    'Feeds Module',
    'Health Center Module',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.dehaze,
                color: Colors.black,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 30.0,
              ),
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/profile.png'),
                backgroundColor: Colors.grey,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Vasu Maheshwari',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Student',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.feedback,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Feedback',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ]),
              const SizedBox(
                height: 20.0,
              ),
              DropdownButton(
                iconEnabledColor: Colors.black,
                value: dropdownvalue,
                items: items.map((String items) {
                  return DropdownMenuItem<String>(
                    value: items,
                    child: Text(
                      items,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}