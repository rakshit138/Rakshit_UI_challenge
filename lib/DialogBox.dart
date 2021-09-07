import 'package:flutter/material.dart';
import 'main.dart';

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: Text("Confirm"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  AlertDialog alert = AlertDialog(
    elevation: 20,
    title: Text("My Information...."),
    content: Column(
      children: [
        Text('Date of birth: ${dt.day}-${dt.month}-${dt.year}'),
        Text('Weight: $wt'),
        Text('Height: $ht'),
      ],
    ),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
