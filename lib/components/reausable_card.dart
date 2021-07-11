import 'package:flutter/material.dart';

class ReausableCard extends StatelessWidget {
  ReausableCard({@required this.colour, this.cardChild, this.onPress});

  final Color? colour;
  final Widget? cardChild;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!();
        }
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
