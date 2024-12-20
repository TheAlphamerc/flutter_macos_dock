import 'package:flutter/material.dart';

class PlaceholderWidget extends StatefulWidget {
  const PlaceholderWidget({super.key});

  @override
  State<PlaceholderWidget> createState() => _PlaceholderWidgetState();
}

class _PlaceholderWidgetState extends State<PlaceholderWidget> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Durations.medium2,
      tween: Tween<double>(begin: 48, end: 0),
      builder: (BuildContext context, double value, Widget? child) {
        return SizedBox(
          width: value,
          height: value,
        );
      },
    );
  }
}
