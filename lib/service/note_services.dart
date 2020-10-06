import 'dart:convert';

import 'package:note_app/model/api_response.dart';
import 'package:note_app/model/note_for_list.dart';
import 'package:http/http.dart' as http;
class NoteServices{
  static const API = "http://api.notes.programmingaddict.com";
  static const header = {
  'apiKey':'92c5cf53-c5db-4f4c-9da8-533c44b91a53'
};
 Future <APIReesponse<List<NoteForLists>>> getNotesLists(){

return http.get(API + '/notes',headers: header).then((data){
    if(data.statusCode == 200){
      final jsonData = json.decode(data.body);
      final notes =  <NoteForLists>[];
      for(var item in jsonData){
          final note = NoteForLists(
            noteId: item['noteID'],
            noteTtitle: item['noteTitle'],
            noteDateTime: DateTime.parse(item['createDateTime']),
            noteUpdateDateTime:item['latestEditDateTime'] != null? DateTime.parse(item['latestEditDateTime']):null,
          );
          notes.add(note);

      }

      return APIReesponse<List<NoteForLists>>(data: notes,);
    }
    return APIReesponse<List<NoteForLists>>(error: true,errorMessage: 'An error occured');
    })
    .catchError((_) => APIReesponse<List<NoteForLists>>(error: true,errorMessage: 'An error occured'));
  }
 }