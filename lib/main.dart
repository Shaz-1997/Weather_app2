import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_project/src/features/weather_page/weather_page.dart';
import 'package:weather_project/src/location_page.dart';
import 'package:weather_project/src/theme/weather_theme_data.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleWithShadow = TextStyle(color: Colors.white, shadows: [
      BoxShadow(
        color: Colors.black12.withOpacity(0.25),
        spreadRadius: 1,
        blurRadius: 4,
        offset: const Offset(0, 0.5),
      )
    ]);
    return MaterialApp(
      title: 'Flutter Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          displayLarge: textStyleWithShadow,
          displayMedium: textStyleWithShadow,
          displaySmall: textStyleWithShadow,
          headlineMedium: textStyleWithShadow,
          headlineSmall: textStyleWithShadow,
          titleMedium: const TextStyle(color: Colors.white),
          bodyMedium: const TextStyle(color: Colors.white),
          bodyLarge: const TextStyle(color: Colors.white),
          bodySmall: const TextStyle(color: Colors.white70, fontSize: 13),
        ),
      ),
      // themeMode: ThemeMode.system,
      // theme: WeatherThemeData.lightTheme,
      // darkTheme: WeatherThemeData.darkTheme,
      themeMode: ThemeMode.system,
      darkTheme: WeatherThemeData.darkTheme,
      home: const WeatherPage(city: 'India',),

      //const WeatherPage(city: 'London'),
    );
  }
}
