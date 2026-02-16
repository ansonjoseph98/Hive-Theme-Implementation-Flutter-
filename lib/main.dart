import 'package:flutter/material.dart';
import 'package:hive_theme_implementation/app_themes.dart';
import 'package:hive_theme_implementation/home_screen.dart';
import 'package:hive_theme_implementation/theme_provider.dart';
import 'package:provider/provider.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  final themeProvider = ThemeProvider();
  await themeProvider.init();

  runApp(
    ChangeNotifierProvider.value(value: themeProvider,child:const HiveThemeSetter()));
}

class HiveThemeSetter extends StatelessWidget {
  const HiveThemeSetter({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Theme Demo',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: themeProvider.themeMode,
      home: const HomeScreen(),
    );
  }
}
