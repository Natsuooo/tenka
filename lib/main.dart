import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/bottom_navigation_model.dart';
import 'package:tenka_2_0_0/Screens/main_bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationModel>(
          create: (context) => BottomNavigationModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Tenka',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainBottomNavigation(),
      ),
    );
  }
}
