import 'package:flutter/material.dart';
import 'package:rolldice/style_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Colors.blue,
            Colors.purple,
            Colors.purpleAccent,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: StyledText(),),
    );
  }
}
