import 'package:flutter/material.dart';

class WheelElement extends StatelessWidget {
  const WheelElement({super.key});

  @override
  Widget build(BuildContext context) {
    var child = Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber[100]),
      child: const Padding(
        padding: EdgeInsets.all(48.0),
        child: Material(type: MaterialType.transparency, child: Text('Food')),
      ),
    );
    return Draggable<String>(
      feedback: child,
      childWhenDragging: SizedBox(),
      onDragStarted: () => print("Drag started"),
      child: child,
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
