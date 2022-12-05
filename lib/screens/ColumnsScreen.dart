import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key});

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      appBar: AppBar(
        title: const Text('Columns'),

    ),
     body:
     //InkWell()
    // onTap: (){
     
     Column(
    mainAxisAlignment: mainAxisAlignment.center,
      children:[
        Text("Sample Question Topic #1"),
        Text("Sample Question Topic #2"),
        Text("Sample Question Topic #3"),
        Text("Sample Question Topic #4"),
        Text("Sample Question Topic #5"),
      ].
      ),
    );
  }
}