import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ContainerScreen.dart';

class RowsScreen extends StatefulWidget {
  const RowsScreen({super.key});

  @override
  State<RowsScreen> createState() => _RowsScreenState();
}

class _RowsScreenState extends State<RowsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: const Text("Land Title Registration"),
            leading: const Icon(Icons.view_column_outlined),
            trailing: const Icon(Icons.chevron_right_rounded),
            subtitle: const Text("All about land registration in Ugandaa..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContainerScreen(),
                ),
              );
            },
          ),
          Text("Sample Question Topic #1"),
          Text("Sample Question Topic #2"),
          Text("Sample Question Topic #3"),
          Text("Sample Question Topic #4"),
          Text("Sample Question Topic #5"),
        ],
      ),
    );
  }
}
