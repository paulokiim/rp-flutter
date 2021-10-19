import 'package:flutter/material.dart';
import 'package:rp_project/widgets/card.dart';

class RoadmapScreen extends StatelessWidget {
  final mockData = [
    {"title": "React Basico", "icon": Icons.circle_outlined},
    {"title": "React Intermediario", "icon": Icons.check_circle_outline},
    {"title": "React Avancado", "icon": Icons.lock_outline},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardWidget(title: 'React Basico', icon: Icons.check_circle_outline),
            CardWidget(title: 'React Basico', icon: Icons.circle_outlined),
            CardWidget(title: 'React Basico', icon: Icons.lock_outline),
          ],
        ),
      ),
    );
  }
}