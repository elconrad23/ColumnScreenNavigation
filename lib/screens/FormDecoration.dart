import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormDecoration extends StatefulWidget {
  const FormDecoration({super.key});

  @override
  State<FormDecoration> createState() => _FormDecorationState();
}

class _FormDecorationState extends State<FormDecoration> {
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
              textCapitalization: TextCapitalization.words,
              initialValue: "My first name",
              cursorWidth: 1.5,
              autofocus: true,
            ),
            FormBuilderTextField(
              name: "user_name",
              initialValue: "My user name",
              readOnly: true,
              cursorWidth: .6,
            ),
            FormBuilderTextField(
              name: "phone_contact",
              initialValue: "776123456",
              readOnly: false,
              textAlign: TextAlign.right,
              maxLength: 9,
              keyboardType: TextInputType.number,
            ),
            FormBuilderTextField(
              name: "email_address",
              initialValue: "example@email.com",
              textAlign: TextAlign.center,
              maxLength: 39,
              textCapitalization: TextCapitalization.characters,
              keyboardType: TextInputType.emailAddress,
            ),
            FormBuilderTextField(
              name: "last_name",
              textCapitalization: TextCapitalization.words,
              initialValue: "My last name",
              onChanged: (value) {
                makeToast();
              },
            ),
            FormBuilderTextField(
              name: "password",
              obscureText: true,
            ),
            FormBuilderTextField(
              name: "search",
              obscureText: false,
              textInputAction: TextInputAction.search,
            ),
            FormBuilderTextField(
              name: "country",
              textCapitalization: TextCapitalization.words,
            ),
            FormBuilderTextField(
              name: "about_yourself",
              initialValue: "About me",
              textAlign: TextAlign.left,
              maxLength: 395,
              textInputAction: TextInputAction.next,
            ),
            FormBuilderTextField(
              name: "confirmation",
              initialValue: "Type 'Yes' to confirm you are not a robot",
              textAlign: TextAlign.center,
              textInputAction: TextInputAction.done,
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
