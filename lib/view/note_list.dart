
import 'package:flutter/material.dart';
import 'package:note_app/model/note_for_list.dart';
import 'package:note_app/service/note_services.dart';
import 'package:note_app/view/create_note.dart';
import 'package:note_app/view/note_delete.dart';

class NoteList extends StatefulWidget {

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  NoteServices get service = GetIt.I<NoteServices>();
  List<NoteForLists> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Note"),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Route route = MaterialPageRoute(builder: (context)=>CreateNote());
          Navigator.push(context, route);
        },
      ),
      body: Container(
        child:ListView.separated(
          separatorBuilder: (_,__)=>Divider(height: 1,color: Colors.green,),
          itemCount: notes.length,
          itemBuilder: (_,index){
            return Dismissible(
              key: ValueKey(notes[index].noteId),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction){

              },
              confirmDismiss: (direction)async{
                final result= await showDialog(
                  context: context,
                  builder: (_)=>DeleteItem(),
                );
                return result;
              },
              background: Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                  icon: Icon(Icons.delete,color: Colors.red,),
                  ),
                ),
              ),
              child: ListTile(
                title: Text(notes[index].noteTtitle),
                subtitle: Text('Note date: ${notes[index].noteDateTime}'),
                onTap: (){
                  Route route = MaterialPageRoute(builder: (context)=>CreateNote(noteId: notes[index].noteId,));
                  Navigator.push(context, route);
                },
              ),
            );
          },
        ) ,
      ),
    );
  }
}

