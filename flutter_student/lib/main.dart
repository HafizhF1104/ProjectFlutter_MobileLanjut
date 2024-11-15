import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_student/pages/home_page.dart';
import 'package:flutter_student/pages/add_student_page.dart';
import 'package:flutter_student/pages/detail_student_page.dart';
import 'package:flutter_student/providers/students.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Students(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          AddStudent.routeName: (context) => AddStudent(),
          DetailStudent.routeName: (context) => DetailStudent(),
        },
      ),
    );
  }
}
