import 'package:flutter/material.dart';
import '../models/meals.dart';
import '../widgets/meal_item.dart';
import '../models/dummy-data.dart';

class CategoryMealScreen extends StatefulWidget {
  // final String categoryId;
  // final String categoryTitle;
  // CategoryMealScreen(this.categoryId, this.categoryTitle);
  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  String categoryTitle;
  List<Meals> displayMeals;

  var _initLoadedData = false;
// create first when page start but it won't work because initState build before context
  // @override
  // void initState() {

  //   super.initState();
  // }
// Instead we use didchange
  @override
  void didChangeDependencies() {
    if (!_initLoadedData) {
      final routeArg =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArg['title'];
      final categoryId = routeArg['id'];
      displayMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _initLoadedData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayMeals.removeWhere((element) => element.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: displayMeals[index].id,
              title: displayMeals[index].title,
              affordability: displayMeals[index].affordability,
              complexity: displayMeals[index].complexity,
              imageUrl: displayMeals[index].imageUrl,
              removeItem: _removeMeal);
        },
        itemCount: displayMeals.length,
      ),
    );
  }
}
