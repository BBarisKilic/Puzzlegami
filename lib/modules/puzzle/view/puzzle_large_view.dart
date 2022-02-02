import 'package:flutter/material.dart';
import 'package:puzzlegami/widgets/widgets.dart';

class PuzzleLargeView extends StatelessWidget {
  const PuzzleLargeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 320,
          width: 320,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: const [
              PuzzleItem(),
            ],
          ),
        ),
      ),
    );
  }
}
