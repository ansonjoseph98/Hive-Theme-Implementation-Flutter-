import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemeProvider extends ChangeNotifier{
  static const String _appthemeBox = 'themeBox';
  static const String _appthemeMode = 'themeMode';

  late Box _themeBox;
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  Future<void> init() async{
    await Hive.initFlutter();
    _themeBox = await Hive.openBox(_appthemeBox);
    _loadTheme();
  }

  void _loadTheme(){
    final savedTheme = _themeBox.get(_appthemeMode,defaultValue: 'system');
    _themeMode = _stringToThemeMode(savedTheme);
    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode mode)async{
    _themeMode = mode;
    await _themeBox.put(_appthemeMode, _themeModeToString(mode));
    notifyListeners();
  }



  String _themeModeToString(ThemeMode mode){
    switch(mode){
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
        return 'system';    
    }
  }

  ThemeMode _stringToThemeMode(String mode){
    switch(mode){
      case 'light':
       return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case'system':
      default:
        return ThemeMode.system;  
    }
  }
}