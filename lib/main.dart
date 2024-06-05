import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_1/A_provider/BOX_provider.dart';
import 'package:test_1/A_provider/page_state_provider.dart';
import 'package:test_1/page-mange.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => page_manage_provider()),
        ChangeNotifierProvider(create: (context) => BOX_state_provider()),


      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: 
      
      Scaffold(body: page_manage())
    );
  }
}
