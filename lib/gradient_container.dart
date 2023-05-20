import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:second_app/dice_roller.dart';
import 'package:second_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// we can also declare variable like this it will either accept null value
Alignment? startAlignment1;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.firstColor,
    this.SecondColor, {
    super.key,
  });
  const GradientContainer.purple({super.key})
      : firstColor = Colors.deepPurple,
        SecondColor = Colors.red;
  final Color firstColor;
  final Color SecondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, SecondColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRoller()
          // StyledText("My first"),
          ),
    );
  }
}

// const startAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;
// // we can also declare variable like this it will either accept null value
// Alignment? startAlignment1;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key,required this.colors,});
//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText("My first"),
//       ),
//     );
//   }
// }
