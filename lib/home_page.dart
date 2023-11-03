import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/home_bloc.dart';

import 'home_2.dart';
import 'home_3.dart';

class HomePage extends StatefulWidget {
  final String currentRoute;
  final PageController pageController;

  const HomePage({
    Key? key,
    required this.currentRoute,
    required this.pageController,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          Widget page;

          if (state is HomeTwo) {
            page = HomeTwoPage();
          } else if (state is HomeThree) {
            page = HomeThreePage();
          } else {
            page = Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.brown.shade100,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Building Bridges,\nBreaking Barriers',
                              textAlign: TextAlign.center,
                              textStyle: GoogleFonts.courgette(
                                textStyle: TextStyle(
                                  fontSize: 70.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown.shade700,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.brown.shade100,
                  height: 150, // Height for button
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(GoToHomeTwoEvent());
                        },
                        child: Icon(
                          Icons.handshake_rounded,
                          color: Colors.brown.shade100,
                          size: 40,
                        ),
                        backgroundColor: Colors.brown.shade700,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }

          return GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.delta.dy > 0 && state is HomeTwo) {
                context.read<HomeBloc>().add(SwipeDownEvent());
              } else if (details.delta.dy < 0 && state is HomeInitial) {
                context.read<HomeBloc>().add(SwipeUpEvent());
              }
            },
            child: Scaffold(
              body: Column(
                children: [
                  Expanded(
                    child: PageTransitionSwitcher(
                      duration: Duration(milliseconds: 500),
                      reverse: state is HomeTwo || state is HomeThree,
                      transitionBuilder:
                          (child, animation, secondaryAnimation) {
                        return FadeThroughTransition(
                          animation: animation,
                          secondaryAnimation: secondaryAnimation,
                          child: child,
                        );
                      },
                      child: page,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
