import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/bottom_navigation_model.dart';
import 'package:tenka_2_0_0/Screens/main_bottom_navigation.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationModel>(
          create: (context) => BottomNavigationModel(),
        ),
        ChangeNotifierProvider<DataModel>(
          create: (context) => DataModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Tenka',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // backgroundColor: Colors.grey[100],
        ),
        home: MainBottomNavigation(),
      ),
    );
  }
}
