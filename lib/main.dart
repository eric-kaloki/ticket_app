import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/widgets/all_tickets.dart';

void main() {
  runApp(const MyApp());
  // var test = TestClass(x: 3, y: 4);
  // var test2 = test.copyWith(x:5);
  // print(test2.x);
}

// class TestClass {
//   int x;
//   int y;
//   TestClass({required this.x, required this.y});
//   TestClass copyWith({int? x, int? y}) {
//     return TestClass(x: x ?? this.x, y: y ?? this.y);
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const BottomNavBar(),
        "/all_tickets": (context) => const AllTickets(),
      },
    );
  }
}
