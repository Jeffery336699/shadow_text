# shadow_text

A custom offset shaded text

# example
```
ShadowText(
          text: 'Shadow Text',
          textColor: Colors.pink,
          shadowColor: Colors.blue,
          xTans: 12.0,
          yTans: 12.0,
          opacity: 0.2,
          shadeBuilder: (BuildContext context, String text, Color color) =>
              Container(
                child: Text(
                  text,
                  style: TextStyle(color: color,fontSize: 28.0),
                ),
              ),
        )
```
## effect
![效果图](https://raw.githubusercontent.com/Jeffery336699/shadow_text/master/3.png)

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
