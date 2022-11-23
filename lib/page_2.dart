import 'package:flutter/material.dart';

import 'page_1.dart';

class Page_2 extends StatefulWidget {
  const Page_2({super.key});

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  int index = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0xffEBDBCD),
          body: Column(
            children: [
              index == 0
                  ? Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Image.asset('assets/logo.png'),
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Color(0xffFF8A91),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 50),
                    child: Image.asset('assets/logo.png'),
                  ),
                  const SizedBox.shrink()
                ],
              ),
              SizedBox(
                height: 600,
                child: PageView(
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (e) {
                      index = e;
                      setState(() {});
                    },
                    children: [
                      Column(children: [
                        Image.asset('assets/girl.png'),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 10),
                          child: Text(
                            "Free education for all",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff4C7378)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 49.0,
                            right: 49,
                            bottom: 40,
                          ),
                          child: Text(
                            "Take total control of your education, learn everything you’ve ever wanted.",
                            style: TextStyle(
                                color: Color(0xff689399),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                      Column(children: [
                        Image.asset('assets/girl2.png'),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 10),
                          child: Text(
                            "Your home, your rules",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff4C7378)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 49.0,
                            right: 49,
                            bottom: 40,
                          ),
                          child: Text(
                            "Learn at the comfort of your home, set-up your leasons just how you like.",
                            style: TextStyle(
                                color: Color(0xff689399),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                      Column(children: [
                        Image.asset('assets/girl3.png'),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 10),
                          child: Text(
                            "You never get bored",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff4C7378)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 49.0,
                            right: 49,
                            bottom: 40,
                          ),
                          child: Text(
                            "Meet thousand others in online interactive classes and share ideas.",
                            style: TextStyle(
                                color: Color(0xff689399),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ])
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffFF8A91)),
                      shape: BoxShape.circle,
                      color:
                      index == 0 ? const Color(0xffFF8A91) : Colors.transparent,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffFF8A91)),
                      shape: BoxShape.circle,
                      color:
                      index == 1 ? const Color(0xffFF8A91) : Colors.transparent,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color:
                      index == 2 ? const Color(0xffFF8A91) : Colors.transparent,
                      border: Border.all(color: const Color(0xffFF8A91)),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              const Spacer(),
              index == 2
                  ? Padding(
                padding:
                const EdgeInsets.only(left: 16.0, right: 16, bottom: 30),
                child: Container(
                  color: const Color(0xffFF8A91),
                  height: 50,
                  child: const Center(
                      child: Text(
                        "Let’s Get Started",
                        style: TextStyle(
                            color: Color(0xffFFFCF9),
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      )),
                ),
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 57,
                    width: 65,
                    margin: const EdgeInsets.only(bottom: 30, left: 17),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/skip.png'))),
                    child: const Center(
                        child: Text(
                          "skip",
                          style: TextStyle(
                              color: Color(0xffFFFCF9),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        )),
                  ),
                  Container(
                    height: 57,
                    width: 65,
                    margin: const EdgeInsets.only(bottom: 30, right: 17),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/arrow.png'))),
                    child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffFFFCF9),
                          size: 16,
                        )),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
