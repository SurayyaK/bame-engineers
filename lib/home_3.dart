import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/home_bloc.dart';

class HomeThreePage extends StatelessWidget {
  final List<Container> cards = [
    Container(
      color: Colors.brown.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Naimur ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade700,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  President',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  I study Architectural Engineering\n  If I had a superpower it would be \n  invisibility so I could fall asleep and \n  no one would know!',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade700,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Liz ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade800,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Vice President',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade800,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  I study Architectural Engineering \n  If I had a superpower it would be \n  time mainpulation!',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade800,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Sully ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade900,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Secretary',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade900,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "  I study Mechanical Engineering \n  If I could have a superpower I'd want \n  telekinesis. I'm all about an easy life!",
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade900,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Benjamin ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade900,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Treasurer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade900,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  I study Civil and Structural \n  Engineering \n  If I had a superpower it would be \n  super speed!',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade900,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Nabhan ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Alumni Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "  If I had a superpower it would be a \n  cliche one, I'd have the ability to fly. \n  I've been obsessed with flying ever \n  since I was a little kid",
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Awaab ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Charity Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "  I study Civil Engineering \n  If I had a superpower it would be the \n  ability to slap people through \n  facetime",
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Kitan ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Events Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "  I study Architectural Engineering \n  If I had a superpower it would be the \n  power to control time because it \n  would literally make me unbeatable! \n ",
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Rahaf ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Events Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "  I study Architectural Engineering \n  If I had a superpower it would be \n  teleportation! ",
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Eiville ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Publicity Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "  I study Architectural Engineering \n  If I had a superpower it would be \n  teleportation to save myself time and \n  money ",
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Vritika ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            '  Media Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "  I study Civil and Structural\n  Engineering. If I had a superpower it \n  would definitely be the ability to \n  teleport so I can travel anywhere and \n  most importantly never be late!",
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Surayya ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.pink.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Educations Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.pink.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  I study Mechatronic and Robotic \n  Engineering.\n  If I had a superpower it would be \n  mind control!',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.pink.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 2),
          Text(
            '  Nour ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Outreach Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  I study Architectural Engineering.\n  If I had a superpower it would be \n  teleportation because I love  to travel!',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Hashim ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Industry Representative',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  I study Chemical Engineering!',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade100,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Parisha ',
            style: GoogleFonts.roboto(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade900,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            '  Industry Representative',
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Colors.brown.shade900,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "  I study Aerospace Engineering.\n  I'm currently on placement at BAE \n  Systems. If I had a superpower it would \n  be telekinesis... to keep things moving \n  whilst working (and channel my inner \n  Matilda Wormwood!)",
            style: GoogleFonts.roboto(
              fontSize: 17,
              color: Colors.brown.shade900,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  David ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade800,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Sports Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade800,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  I study Civil and Structural? \n  Engineering.\n  If I had a superpower it would be \n  super strength a bit like hulk, where I \n  could pick up buildings',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade800,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
    Container(
      color: Colors.brown.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            child: Image.asset(
              'assets/surayya.PNG',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '  Ajmal ',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.brown.shade800,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '  Sponsorship Officer',
            style: GoogleFonts.roboto(
              fontSize: 22,
              color: Colors.brown.shade800,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  dk what he studies or superpower \n  (shrug)',
            style: GoogleFonts.roboto(
              fontSize: 18,
              color: Colors.brown.shade800,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.delta.dy > 0 && state is HomeTwo) {
                context.read<HomeBloc>().add(SwipeDownEvent());
              } else if (details.delta.dy < 0 && details.delta.dy < -20) {
                _performDelayedTransition(context, SwipeUpEvent());
              }
            },
            child: Container(
              color: Colors.grey.shade300,
              child: Stack(
                children: [
                  CardSwiper(
                    cardsCount: cards.length,
                    cardBuilder: (context, index, percentThresholdX,
                            percentThresholdY) =>
                        Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 70.0, 20, 70),
                      child: Container(
                        height: 550,
                        decoration: BoxDecoration(
                          color: cards[index].color,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        alignment: cards[index].alignment,
                        child: cards[index].child,
                      ),
                    ),
                    isLoop: true,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.chevronUp,
                            color: Colors.brown.shade700),
                        onPressed: () {
                          context.read<HomeBloc>().add(GoToHomeInitialEvent());
                        },
                      ),
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

  void _performDelayedTransition(BuildContext context, HomeEvent event) {
    Future.delayed(Duration(milliseconds: 100), () {
      context.read<HomeBloc>().add(event);
    });
  }
}
