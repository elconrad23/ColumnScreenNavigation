import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'firebase_options.dart';
import 'screens/ColumnsScreen.dart';
import 'screens/ContainerScreen.dart';
import 'screens/RowsScreen.dart';
import 'screens/imagesScreen.dart';
import 'screens/ToastScreen.dart';
import 'screens/FormTextField.dart';
import 'screens/ContainerStylingScreen.dart';
import 'screens/FormDecoration.dart';
import 'screens/FormOtherFields.dart';
import 'screens/TextStylingScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

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
          title: const Text("Container styling"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Styling the container..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContainerStylingScreen(),
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
                builder: (context) => const TextStylingScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Images Screen"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Adding images..."),
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
          title: const Text("Toast"),
          leading: const Icon(Icons.table_rows_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("All about toast..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ToastScreen(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("All about forms"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_rounded),
          subtitle: const Text("Text input with forms"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FormTextField(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Form Decoration"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Styling the form..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FormDecoration(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text("Form Other things"),
          leading: const Icon(Icons.text_fields_outlined),
          trailing: const Icon(Icons.chevron_right_sharp),
          subtitle: const Text("Rest of the form fields..."),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FormOtherFields(),
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
    ),
  );
}
