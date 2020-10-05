import 'package:note_app/model/note_for_list.dart';

class NoteServices{

  List<NoteForLists> getNotesLists(){
    return  [
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
  }
 }