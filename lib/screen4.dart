import 'package:flutter/material.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.dehaze,
                color: Colors.white,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black,
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
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'BTech CSE 3rd Sem',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.payment,
                          color: Colors.white,
                          size: 55.0,
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.feedback,
                          color: Colors.white,
                          size: 55.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.food_bank,
                          color: Colors.white,
                          size: 55.0,
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.note,
                          color: Colors.white,
                          size: 55.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

