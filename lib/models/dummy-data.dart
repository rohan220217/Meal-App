import 'package:flutter/material.dart';
import 'meals.dart';
import 'category.dart';

const DUMMY_CATEGORIES = const [
  Category(id: 'c1', title: 'Italian', color: Colors.purple),
  Category(id: 'c2', title: 'Asian', color: Colors.red),
  Category(id: 'c3', title: 'Indian', color: Colors.orange),
  Category(id: 'c4', title: 'American', color: Colors.purple),
  Category(id: 'c5', title: 'Gugrati', color: Colors.green),
];

const DUMMY_MEALS = const [
  Meals(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'khichdi plus chicken',
    affordability: Affordability.Affordable,
    imageUrl:
        'https://linuxize.com/post/how-to-copy-cut-paste-in-vim/featured.jpg?ezimgfmt=ng:webp/ngcb26',
    ingredients: ['sfdsdfsfsdf', 'sfddsdfsdfsdfs', 'sdfsdfsdfsdfsfsf'],
    complexity: Complexity.Simple,
    steps: ['sldfjlsdkfjskfd', 'sldfjlsdkfjskfd', 'sldfjlsdkfjskfd'],
    isGluttenFree: true,
    isLactosseFree: false,
    isVegan: true,
    isVegeterian: true,
  ),
  Meals(
    id: 'm1',
    categories: ['c2'],
    title: 'Chicken',
    affordability: Affordability.Affordable,
    imageUrl:
        'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/03/28/899718-jawaharlal-nehru.jpg',
    ingredients: ['sfdsdfsfsdf', 'sfddsdfsdfsdfs', 'sdfsdfsdfsdfsfsf'],
    complexity: Complexity.Hard,
    steps: ['sldfjlsdkfjskfd', 'sldfjlsdkfjskfd', 'sldfjlsdkfjskfd'],
    isGluttenFree: true,
    isLactosseFree: false,
    isVegan: true,
    isVegeterian: true,
  ),
  Meals(
    id: 'm1',
    categories: ['c1'],
    title: 'Allooo ki sabji',
    affordability: Affordability.Affordable,
    imageUrl:
        'https://linuxize.com/post/how-to-copy-cut-paste-in-vim/featured.jpg?ezimgfmt=ng:webp/ngcb26',
    ingredients: ['sfdsdfsfsdf', 'sfddsdfsdfsdfs', 'sdfsdfsdfsdfsfsf'],
    complexity: Complexity.Simple,
    steps: ['sldfjlsdkfjskfd', 'sldfjlsdkfjskfd', 'sldfjlsdkfjskfd'],
    isGluttenFree: true,
    isLactosseFree: false,
    isVegan: true,
    isVegeterian: true,
  ),
];
