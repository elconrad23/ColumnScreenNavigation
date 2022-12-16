import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastScreen extends StatefulWidget {
  const ToastScreen({super.key});

  @override
  State<ToastScreen> createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast notifications appear here'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              makeToast();
            },
            child: const Center(
              child: Text(
                "Make a toast popup",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void makeToast() {
    Fluttertoast.showToast(
        msg: "Successfully opened toast screen...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Color.fromARGB(255, 66, 29, 27),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
