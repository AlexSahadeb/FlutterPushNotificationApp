import 'package:flutter/material.dart';
import 'package:flutterpushnotificationapp/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterpushnotificationapp/recommanded.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
        routes: {"recommanded": (context) => RecommandedScreen()});
  }
}
