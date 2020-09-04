import 'package:flutter/material.dart';

const edgeInset = 15.0;
const borderRadius = 10.0;
const activeColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  const ReusableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(edgeInset),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: activeColor,
      ),
    );
  }
}