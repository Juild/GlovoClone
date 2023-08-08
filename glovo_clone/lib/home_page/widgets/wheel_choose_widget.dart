import 'package:flutter/material.dart';

class WheelElement extends StatelessWidget {
  const WheelElement({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber[100]),
      child: const Padding(
        padding: EdgeInsets.all(48.0),
        child: Text('Food'),
      ),
    );
  }
}

class WheelChooser extends StatelessWidget {
  const WheelChooser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: Colors.amber,
      child: Stack(
        children: [
          Transform.translate(offset: const Offset(100, 100), child: const WheelElement()),
        ],
      ),
    );
  }
}
