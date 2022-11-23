import 'package:flutter/material.dart';


class Page_1 extends StatelessWidget {
  const Page_1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xffEBDBCD),
            body: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  child: Center(child: Image.asset('assets/free.png')),
                ),
                Positioned(
                    left: 0,
                    top:0,
                    child: Image(image: AssetImage('assets/up.png'))),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image(image: AssetImage('assets/down.png')))
              ],
            )
        ));
  }
}
