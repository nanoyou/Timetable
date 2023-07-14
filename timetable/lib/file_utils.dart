import 'dart:io';
import 'dart:convert';

import 'package:path_provider/path_provider.dart';
import 'package:timetable/class.dart';

Future<String> getApplicationDocumentsDirectoryString()async{
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

void writeClass2File(Class a){
  final path = getApplicationDocumentsDirectoryString();
  final file = File('$path/Classes.json');
  jsonEncode(a);
  file.writeAsString("abc",flush: true);
}