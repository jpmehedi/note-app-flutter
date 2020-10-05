import 'package:flutter/material.dart';

class DeleteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure delete this note?"),
      actions: [
        FlatButton(
          onPressed: (){
            Navigator.of(context).pop(true);
          },
          child: Text("Yes"),
        ),
        FlatButton(
          onPressed: (){
            Navigator.of(context).pop(false);
          },
          child: Text("No"),
        )
      ],
    );
  }
}
