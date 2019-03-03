import 'package:flutter/material.dart';

void main() => runApp(PlatformView());


class PlatformView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Platform View',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Platform View',),
    );
  }

}

class MyHomePage extends StatefulWidget {
  final String title;
  
  MyHomePage({Key key, this.title}) :super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _visible =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}