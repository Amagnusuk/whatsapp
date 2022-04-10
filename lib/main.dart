import 'package:flutter/material.dart';
import 'package:whatsapp/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        secondaryHeaderColor: Color(0xff25D366)
      ),
      home: HomeScreen(),
    );
  }
}
