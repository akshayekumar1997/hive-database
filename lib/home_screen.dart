import 'package:hive_database/database/fuctions/db_functions.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'add_student_widget.dart';
import 'list_student_widget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  getAllStudents();
    return Scaffold(
      
      body: SafeArea(child:
       Column(
        
        children: [StudentAddWidget(),
Expanded(child: StudentListWidget()),
        ],
       )
      ),
    );
  }
}