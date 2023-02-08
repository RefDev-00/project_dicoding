import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restaurant_app_dicoding/models/restaurant.dart';
import 'package:restaurant_app_dicoding/theme.dart';

class MenuPage extends StatelessWidget {
  static const routeName = '/home_page';
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Restaurant App',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: secondaryColor),
        ),
        backgroundColor: primaryColor,
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/restaurant.json'),
        builder: (context, snapshot) {
          final List<Restaurant> restaurant = parseRestaurants(snapshot.data);
          return ListView.builder(
            itemCount: restaurant.length,
            itemBuilder: (context, index) {
              return _buildRestaurantItem(context, restaurant[index]);
            },
          );
        },
      ),
    );
  }
}

List<Restaurant> parseRestaurants(String? json) {
  if (json == null) {
    return [];
  }

  final List<dynamic> parsed = jsonDecode(json);
  return parsed.map((dynamic json) => Restaurant.fromJson(json)).toList();
}

Widget _buildRestaurantItem(BuildContext context, Restaurant restaurant) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    leading: Image.network(
      restaurant.pictureId,
      width: 100,
    ),
    title: Text(restaurant.name),
    subtitle: Text(restaurant.description),
  );
}
