import 'package:provider/provider.dart';
import 'package:useprov/providers/to_do_provider.dart';
import 'package:useprov/screens/first_screen.dart';
import 'package:useprov/todo_home_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> ToDoProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const first_screen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
