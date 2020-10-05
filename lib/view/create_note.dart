import 'package:flutter/material.dart';

class CreateNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create  Note"),),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Note Id"
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
                hintText: "Note Title"
            ),
          ),
          SizedBox(height: 10,),
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Text('Submit', style: TextStyle(fontSize: 20)),
            ),
          ),

        ],
      ),
    );
  }
}
