import 'package:flutter/material.dart';
import 'package:hive_database/database/fuctions/db_functions.dart';
import 'database/model/data_model.dart';

class StudentAddWidget extends StatelessWidget {
  StudentAddWidget({super.key});
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
   final _phoneController = TextEditingController();
    final _placeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(children: 
      [AppBar(title: Text("Student Details"),
      leading: Icon( Icons.account_circle_outlined)
      ),
      SizedBox(height: 20,width: 20,),
        TextFormField(
          
          controller: _nameController,
          decoration:
          
              InputDecoration(
                prefixIcon: Icon(Icons.person_2_outlined),
                border: OutlineInputBorder(
                
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue)
              ), hintText: "Full Name"),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        TextField(
          controller: _ageController,
          decoration:
              InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 4)

              ), hintText: "Age"),

              
        ),
SizedBox(
          height: 10,
          width: 10,
        ),
         TextFormField(
          controller: _phoneController,
          decoration:
              InputDecoration(
                prefixIcon: Icon(Icons.phone), 
                border: OutlineInputBorder(
                
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue)
              ), hintText: "Phone number"),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
         TextFormField(
          controller: _placeController,
          decoration:
              InputDecoration(border: OutlineInputBorder(
                
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue)
              ), hintText: "Place"),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton.icon(
            onPressed: () {
              onAddStudentButtonClicked();
            },
            icon: Icon(Icons.add_box_outlined),
            label: Text("Add Student")),
      ]),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return ;
    }
    print("$_name $_age ");
    final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}
