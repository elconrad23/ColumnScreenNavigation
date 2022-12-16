import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormOtherFields extends StatefulWidget {
  const FormOtherFields({super.key});

  @override
  State<FormOtherFields> createState() => _FormOtherFieldsState();
}

class _FormOtherFieldsState extends State<FormOtherFields> {
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
            FormBuilderDateTimePicker(
              name: 'dob',
              initialDate: DateTime.now(),
              decoration: const InputDecoration(
                labelText:
                    "When were you born according to your birth certificate",
                alignLabelWithHint: true,
                icon: Icon(Icons.date_range_rounded),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FormBuilderDateTimePicker(
              name: 'Preffered appointment time',
              inputType: InputType.time,
              //initialTime: Time.now(),
              decoration: const InputDecoration(
                labelText: "When would you like to have your appointment?",
                alignLabelWithHint: true,
                icon: Icon(Icons.timeline),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FormBuilderDropdown<String>(
              // autovalidate: true,
              name: 'gender',
              decoration: const InputDecoration(
                labelText: 'Gender',
                // suffix: _genderHasError
                //     ? const Icon(Icons.error)
                //     : const Icon(Icons.check),
                hintText: 'Select Gender',
              ),
              items: [
                "Male",
                "Female",
                "Prefer not to say",
              ].map((gender) {
                return DropdownMenuItem(
                  alignment: AlignmentDirectional.center,
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 15,
            ),
            FormBuilderRangeSlider(
              name: 'range_slider',
              // validator: FormBuilderValidators.compose([FormBuilderValidators.min(context, 6)]),
              // onChanged: _onChanged,
              min: 1.0,
              max: 10.0,
              initialValue: const RangeValues(1, 10),
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.pink[100],
              decoration: const InputDecoration(
                  hintText: "Time estimate",
                  labelText: 'Time Range to wait in case you are late'),
            ),
            FormBuilderCheckbox(
              name: 'accept_terms',
              initialValue: false,
              title: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'I have read and agree to the ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              validator: FormBuilderValidators.equal(
                true,
                errorText: 'You must accept terms and conditions to continue',
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
