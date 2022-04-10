import 'package:flutter/material.dart';

class PageStatus extends StatefulWidget {
  const PageStatus({ Key? key }) : super(key: key);

  @override
  State<PageStatus> createState() => _PageStatusState();
}

class _PageStatusState extends State<PageStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          return Text("Para preencher!");
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}