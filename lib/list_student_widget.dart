import 'package:flutter/material.dart';
import 'database/fuctions/db_functions.dart';
import 'database/model/data_model.dart';

class StudentListWidget extends StatelessWidget {
  const StudentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentlistNotifier,
      builder:
          (BuildContext ctx, List<StudentModel> studentlist, Widget? child) {
        return ListView.separated(
            itemBuilder: (ctx, index) {
              final data = studentlist[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.age),
                trailing: IconButton(onPressed: () {
               
deleteStudent(data.id!);
               
                  
                }, icon: Icon(Icons.delete_forever), color: Colors.red,),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: studentlist.length);
      },
    );
  }
}
