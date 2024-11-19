import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "DinoManager",
      home: Scaffold(
        appBar: AppBar(
          title: Text("DinoManager"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: Text(
          "Hello world!",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            letterSpacing: 3.0,
            color: Colors.black87,
            fontFamily: "Notable"
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("Add"),
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.grey[100],
      ),
    ),
  );
}
