import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ContainerScreen.dart';

class ColumnsScreen extends StatefulWidget {
  const ColumnsScreen({super.key});

  @override
  State<ColumnsScreen> createState() => _ColumnsScreenState();
}

class _ColumnsScreenState extends State<ColumnsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Columns'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Sample Question Topic #1"),
          ListTile(
            title: const Text("Land Title Registration"),
            leading: const Icon(Icons.view_column_outlined),
            trailing: const Icon(Icons.chevron_right_rounded),
            subtitle: const Text("All about land registration in Ugandaa..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerScreen(),
                ),
              );
            },
          ),
          // Text("Sample Question Topic #2"),
          // Text("Sample Question Topic #3"),
      
        ],
      ),
    );
  }
}
