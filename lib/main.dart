import 'package:flutter/material.dart';
import './screens/filters_screen.dart';
import './screens/tab_screen.dart';
import 'screens/category_meal.dart';
import './screens/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(28, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesPage(),
      routes: {
        '/': (ctx) => TabScreen(),
        '/category-meals': (ctx) => CategoryMealScreen(),
        '/meal': (ctx) => Meal(),
        '/filters': (ctx) => Filters(),
      },
    );
  }
}
