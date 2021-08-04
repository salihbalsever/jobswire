import 'package:flutter/material.dart';

import '/view/items_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      home: ItemsView(),
    );
  }
}
