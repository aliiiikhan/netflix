import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                color: Colors.red,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 300,
                    color: Colors.yellow,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
