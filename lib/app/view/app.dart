import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puzzlegami/modules/modules.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PuzzleViewModel>(
          create: (_) => PuzzleViewModel(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PuzzleView(),
      ),
    );
  }
}
