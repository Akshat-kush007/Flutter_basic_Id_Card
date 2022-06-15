import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int stage=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ID Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Id Template"),
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              stage +=1;
            });
          }),
          backgroundColor: Colors.grey[800],
          hoverColor: Colors.grey[650],
          
          child: Icon(Icons.add),
          ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/m2.jpg'),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.white,
              ),
              Text(
                'Name',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Holders Name',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellow[600],
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Current Stage',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '$stage',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellow[600],
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "1234456@gmail.com",
                    style:
                        TextStyle(color: Colors.grey[400], letterSpacing: 1.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
