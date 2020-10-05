
import 'package:flutter/material.dart';
import 'package:note_app/model/note_for_list.dart';

class NoteList extends StatelessWidget {
  final notes = [
    NoteForLists(
        noteId: "1",
        noteTtitle: "Note Title",
        noteDateTime: DateTime.now(),
        noteUpdateDateTime: DateTime.now()
    ),
    NoteForLists(
        noteId: "2",
        noteTtitle: "Note Title",
        noteDateTime: DateTime.now(),
        noteUpdateDateTime: DateTime.now()
    ),
    NoteForLists(
        noteId: "3",
        noteTtitle: "Note Title",
        noteDateTime: DateTime.now(),
        noteUpdateDateTime: DateTime.now()
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Note"),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          //TODO
        },
      ),
      body: Container(
        child:ListView.separated(
          separatorBuilder: (_,__)=>Divider(height: 1,color: Colors.green,),
          itemCount: notes.length,
          itemBuilder: (_,index){
            return ListTile(
              title: Text(notes[index].noteTtitle),
              subtitle: Text('Note date: ${notes[index].noteDateTime}'),
            );
          },
        ) ,
      ),
    );
  }
}

