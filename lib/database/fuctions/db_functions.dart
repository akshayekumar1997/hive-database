
import 'package:flutter/material.dart';
import 'package:hive_database/database/model/data_model.dart';
import 'package:hive_flutter/adapters.dart';
ValueNotifier< List<StudentModel>>studentlistNotifier=ValueNotifier([]);
Future <void> addStudent(StudentModel value)async{
 final studentDb= await Hive.openBox<StudentModel>("student_db");
 final _id=await studentDb.add(value);
 int id=_id;

  // studentlistNotifier.value.add(value);
await studentDb.add(value);
studentlistNotifier.notifyListeners();
  getAllStudents();
}
Future<void>getAllStudents()async{
  final studentDb= await Hive.openBox<StudentModel>("student_db");
  studentlistNotifier.value.clear();
  studentlistNotifier.value.addAll(studentDb.values);
  studentlistNotifier.notifyListeners();
}
Future<void>deleteStudent(int id) async{
final studentDb= await Hive.openBox<StudentModel>("student_db");
await studentDb.delete(id);
getAllStudents();
}