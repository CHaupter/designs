import 'package:designs/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: "home_screen",
      routes: {
        "basic_design": (_) => BasicDesignScreen(),
        "scroll_screen": (_) => ScrollScreen(),
        "home_screen": (_) => HomeScreen(),
      },
    );
  }
}
