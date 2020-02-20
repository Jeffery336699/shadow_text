import 'package:flutter/material.dart';
import 'package:shadow_text/shadow_text.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shadow Text Demo'),
      ),
      body: Center(
        child: ShadowText(
          text: 'Shadow Text',
          textColor: Colors.pink,
          shadowColor: Colors.blue,
          xTans: 12.0,
          yTans: 12.0,
          shadeBuilder: (BuildContext context, String text, Color color) =>
              Container(
                child: Text(
                  text,
                  style: TextStyle(color: color,fontSize: 28.0),
                ),
              ),
        ),
      ),
    );
  }
}