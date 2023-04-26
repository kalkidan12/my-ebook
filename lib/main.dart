import 'package:flutter/material.dart';
import 'package:my_ebook/app.dart';
import 'package:my_ebook/view_models/app_provider.dart';
import 'package:my_ebook/view_models/details_provider.dart';
import 'package:my_ebook/view_models/favorites_provider.dart';
import 'package:my_ebook/view_models/genre_provider.dart';
import 'package:my_ebook/view_models/home_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => DetailsProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
        ChangeNotifierProvider(create: (_) => GenreProvider()),
      ],
      child: MyApp(),
    ),
  );
}
