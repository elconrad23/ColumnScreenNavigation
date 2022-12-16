import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormTextField extends StatefulWidget {
  const FormTextField({super.key});

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast notifications appear here'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormBuilderTextField(
              name: "first_name",
              decoration: const InputDecoration(
                icon: Icon(Icons.supervised_user_circle_rounded),
                iconColor: Colors.amberAccent,
                labelText: ("First Name"),
                isDense: true,
                contentPadding: EdgeInsets.only(left: 2),
                helperText: "Enter first name as it appears on your I.D",
                helperStyle: TextStyle(color: Colors.amberAccent),
                hintText: "Enter First Name",
                prefixText: "Mr./Mrs.",
                suffixIcon: Icon(Icons.satellite),
                filled: true,
                fillColor: Colors.lightBlue,
                //border: Border.all({width: 3.0})
              ),
              textCapitalization: TextCapitalization.words,
              initialValue: "My first name",
              cursorWidth: 1.5,
              autofocus: true,
            ),
            const SizedBox(
              height: 15,
            ),
            FormBuilderTextField(
              name: "last_name",
              decoration: const InputDecoration(
                icon: Icon(Icons.supervised_user_circle_rounded),
                iconColor: Colors.amberAccent,
                label: Text("Last Name"),
                helperText: "Enter last name as it appears on your I.D",
                helperStyle: TextStyle(color: Colors.amberAccent),
                hintText: "Enter Last Name",
              ),
            ),
          ],
        ),
      ),
    );
  }

  void makeToast() {
    Fluttertoast.showToast(
        msg: "Successfully entered a value...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Color.fromARGB(255, 66, 29, 27),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
