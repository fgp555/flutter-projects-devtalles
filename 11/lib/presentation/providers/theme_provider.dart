import 'package:dev/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref)=>colorList);

// Un simpre boolean
final isDarkmodeProvider = StateProvider((ref) => false);

// Un simpre int
final selectedColorProvider = StateProvider((ref) => 0);

