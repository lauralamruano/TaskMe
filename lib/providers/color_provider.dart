import 'package:block/themes/theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/color_theme_model.dart';

class ColorProvider with ChangeNotifier {
  final String _key = "theme";
  late ThemeData _selectedTheme;

  ColorProvider() {
    // Recuperar el tema guardado previamente de SharedPreferences o utilizar el tema predeterminado
    // Aquí es donde puedes usar SharedPreferences para guardar y recuperar el tema seleccionado si quieres persistencia en el tema elegido.
    // En este ejemplo se utiliza el tema predeterminado.
    _selectedTheme = themes[0].theme;
  }

  ThemeData get selectedTheme => _selectedTheme;

  void setTheme(ThemeData theme) {
    _selectedTheme = theme;
    notifyListeners();
  }
}
