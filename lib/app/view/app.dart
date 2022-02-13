import 'package:flutter/material.dart';
import '../../modules/modules.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PuzzleView(),
    );
  }
}
