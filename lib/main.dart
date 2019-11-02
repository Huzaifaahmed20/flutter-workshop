import 'package:flutter/material.dart';

import './mypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme(title: TextStyle(fontSize: 100))),
      home: MyHomePage(),
      routes: {'/mypage': (context) => MyPage()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                '$counter',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            RaisedButton(
              child: Text('Go to myPage'),
              onPressed: () {
                Navigator.of(context).pushNamed('/mypage');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Counter App'),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
          onPressed: () => incementCounter()),
    );
  }
}
