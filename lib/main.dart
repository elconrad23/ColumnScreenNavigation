import 'package:flutter/material.dart';
import 'screens/ColumnsScreen.dart';
import 'screens/ContainerScreen.dart';
import 'screens/RowsScreen.dart';
import 'screens/imagesScreen.dart';
import 'screens/ContainerStylingScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(
        title: _title,
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  // static const String title = 'Flutter Code Sample';

  const MyStatefulWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Home Screen"),
    ),
    body: ListView(
      children: [
        ListTile(
          title: const Text("Columns"),
          leading: const Icon(Icons.view_column_outlined),
          trailing: const Icon(Icons.chevron_right_rounded),
          subtitle: const Text("All about land purchasing in Ugandaa..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ColumnsScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Rows"),
          leading: const Icon(Icons.table_rows_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("All about rows..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RowsScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Text styling"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Styling the text..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ImagesScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Container styling"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Styling the text..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContainerStylingScreen(),
              ),
            );
          },
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContainerScreen(),
              ),
            );
          },
        ),
      ],
      // Center(
      // Text("Columns"),
      // ),
    ),
  );
}
