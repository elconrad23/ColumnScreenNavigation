import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerStylingScreen extends StatefulWidget {
  const ContainerStylingScreen({super.key});

  @override
  State<ContainerStylingScreen> createState() => _ContainerStylingScreenState();
}

class _ContainerStylingScreenState extends State<ContainerStylingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Column(
        //Can only use color attribute below if this one isn't there -- background color: Colors.red.shade400,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // ignore: prefer_const_constructors
            width: 200,
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(20),
            height: 500,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                  color: Colors.white24,
                  width: 540,
                  style: BorderStyle.solid,
                  strokeAlign: StrokeAlign.center),
              image: const DecorationImage(
                opacity: 0.65,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/logo.jpg'),
              ),
            ),
            // ignore: prefer_const_constructors
            child: Text(
              "My container ContainerStylingScreen",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromARGB(255, 82, 47, 47),
                fontSize: 30,
              ),
            ),
          ),
        ],
        // alignment: Alignment.center,
        // color: Colors.red.shade600,
        // padding: const EdgeInsets.symmetric(),
        // margin: const EdgeInsets.only(left: 10, right: 30),
      ),
    );
  }
}
