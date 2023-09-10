import 'package:flutter/material.dart';
import 'package:online_course_app/screens/entryPoint/entry_point.dart';
import 'package:online_course_app/utils/scroll_behaviour.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'ECS 2.0',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEEF1F8),
        primarySwatch: Colors.blue,
        fontFamily: "SFNSDisplay",
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(height: 0),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
      ),
      home: const EntryPoint(),
    );
  }
}

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: Color(0xFFDEE3F2),
    width: 1,
  ),
);
