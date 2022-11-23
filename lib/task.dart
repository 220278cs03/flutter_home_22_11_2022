import 'package:flutter/material.dart';

import 'page_1.dart';
import 'page_2.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PageView(
          children: [
            Page_1(),
            Page_2(),
          ],
        )
    );
  }
}
