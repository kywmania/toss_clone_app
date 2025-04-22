import 'package:flutter/material.dart';
import 'package:toss_clone_app/ui/benefit/benefit_page.dart';
import 'package:toss_clone_app/ui/home/home_page.dart';
import 'package:toss_clone_app/ui/menu/menu_page.dart';
import 'package:toss_clone_app/ui/security/security_page.dart';
import 'package:toss_clone_app/ui/shopping/shopping_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: [
            HomePage(),
            BenefitPage(),
            ShoppingPage(),
            SecurityPage(),
            MenuPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.diamond_outlined),
              activeIcon: Icon(Icons.diamond),
              label: '혜택',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              activeIcon: Icon(Icons.shopping_bag),
              label: '쇼핑',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined),
              label: '증권',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined),
              label: '전체',
            )
          ],
        ),
      ),
    );
  }
}
