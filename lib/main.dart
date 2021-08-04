import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'view_models/items_view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ItemsViewModel>(
      create: (_) => ItemsViewModel()..fetchItems(),
      child: const App(),
    ),
  );
}
