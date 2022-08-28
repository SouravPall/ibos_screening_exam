import 'package:flutter/material.dart';
import 'package:ibos_screening_exam/page/employee_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: EmployeeProfilePage.routeName,
      routes: {
        EmployeeProfilePage.routeName: (_) => EmployeeProfilePage(),
      },
    );
  }
}


