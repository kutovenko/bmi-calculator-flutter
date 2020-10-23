import 'package:flutter/material.dart';

const edgeInset = 15.0;
const borderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  const ReusableCard({@required this.color, this.cardChild, @required this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
      child: cardChild,
      margin: EdgeInsets.all(edgeInset),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
    ),
    );
  }
}