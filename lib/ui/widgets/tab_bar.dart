import 'package:flutter/material.dart';
import 'package:toss_clone_app/ui/home/home_page.dart';

class TabBar extends StatelessWidget{
  const TabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: 0,
      children: [
        HomePage(),

      ],
    );
  }
}