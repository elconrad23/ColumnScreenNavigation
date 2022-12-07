import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: ListView(
        children: const [
          Image(
              image: AssetImage('assets/images/logo.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.fill),
          Image(
              image: NetworkImage('assets/images/logo.jpg'),
              width: 200,
              height: 200,
              fit: BoxFit.fill),
        ],
      ),
    );
  }
}
