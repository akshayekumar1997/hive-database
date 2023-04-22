import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'home_screen.dart';
import 'package:hive/hive.dart';
import 'database/model/data_model.dart';
Future <void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
Hive.initFlutter ();
if(!Hive.isAdapterRegistered(StudentModelAdapter().typeId)){
Hive.registerAdapter(StudentModelAdapter());
}
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hive ",
      home:HomeScreen() ,
    );
}
}