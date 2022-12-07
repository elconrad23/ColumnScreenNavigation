import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
    ),
     body: Container(
      //Can only use color attribute below if this one isn't there -- background color: Colors.red.shade400,
      // mainAxisAlignment: MainAxisAlignment.center,
      child: Text(
        "My container",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
        ),
         ),
      alignment: Alignment.center, 
      color: Colors.red.shade600,
      padding: const EdgeInsets.symmetric(),
      margin: const EdgeInsets.only(left: 10, right: 30),
      ),
    );
  }
}