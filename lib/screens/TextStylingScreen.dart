import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStylingScreen extends StatefulWidget {
  const TextStylingScreen({super.key});

  @override
  State<TextStylingScreen> createState() => _TextStylingScreenState();
}

class _TextStylingScreenState extends State<TextStylingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Text Styling'),
      ),
      body: ListView(
        children: [
          Container(
            child: const Text(
              "Available Land titles with Text Styling done",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: TextStyle(
                color: Color.fromARGB(255, 82, 47, 47),
                backgroundColor: Color.fromARGB(255, 245, 75, 75),
                fontSize: 20,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                letterSpacing: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
