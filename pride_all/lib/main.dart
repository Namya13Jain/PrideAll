import 'package:flutter/material.dart';
import 'package:pride_all/pages/community_page.dart';
import 'package:pride_all/pages/home_page.dart';
import 'package:pride_all/pages/learn.dart';
import 'package:pride_all/pages/opportunity_page.dart';
import 'package:pride_all/pages/store_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pride All',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: HomePage(),
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => const HomePage(),
        'learn_page': (context) => const LearnPage(),
        'community_page': (context) => const ContactPage(),
        'opportunity_page': (context) => const OpportunityPage(),
        'store_page': (context) => const StorePage(),
      },
    );
  }
}
