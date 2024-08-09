import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bloc/home_bloc.dart';

class CardData {
  String name;
  String role;
  String bio;
  String imagePath;
  Color backgroundColor;
  Color textColor;
  String url;

  CardData({
    required this.name,
    required this.role,
    required this.bio,
    required this.imagePath,
    required this.backgroundColor,
    required this.textColor,
    required this.url,
  });
}

class HomeThreePage extends StatelessWidget {
  final List<CardData> cardDataList = [
    CardData(
      name: 'Naimur',
      role: 'President',
      bio:
          'My goal is to create an inclusive community where people can come together to socialise and make friends whilst developing themselves into the engineers of the future!',
      imagePath: 'assets/naimur.jpeg',
      backgroundColor: Colors.brown.shade100,
      textColor: Colors.brown.shade700,
      url: 'https://www.linkedin.com/in/naimur-rahman-0104b4238/',
    ),
    CardData(
      name: 'Lizzie',
      role: 'Vice President',
      bio:
          'My goal is to create an environment where everyone feels heard, valued and inspired to pursue their engineering ambitions! 😁 ',
      imagePath: 'assets/elizabeth.jpeg',
      backgroundColor: Colors.brown.shade200,
      textColor: Colors.brown.shade800,
      url: 'https://www.linkedin.com/in/elizabeth-adeni/',
    ),
    CardData(
      name: 'Sully',
      role: 'Secretary',
      bio:
          'My goal is to create a community of likeminded individuals all able to assist each other to become the best versions of themselves!',
      imagePath: 'assets/sulaiman.jpeg',
      backgroundColor: Colors.brown.shade300,
      textColor: Colors.brown.shade900,
      url: 'https://www.linkedin.com/in/sulaiman-hafezi-3221981a5/',
    ),
    CardData(
      name: 'Benjamin',
      role: 'Treasurer',
      bio:
          'My goal is to make the university a comfortable environment for Engineers of ethnic backgrounds. Making sure no one feels lonely during their academic journey.',
      imagePath: 'assets/ben.jpeg',
      backgroundColor: Colors.brown.shade400,
      textColor: Colors.brown.shade900,
      url: 'https://www.linkedin.com/in/benjaminmbale/',
    ),
    CardData(
      name: 'Surayya',
      role: 'Education Officer',
      bio:
          'My goal is to inspire and support as many people as possible, becoming the role model I wish I had!! \\(^o^)/',
      imagePath: 'assets/shay.jpeg',
      backgroundColor: Colors.brown,
      textColor: Colors.pink.shade50,
      url: 'https://www.linkedin.com/in/surayya-kausar/',
    ),
    CardData(
      name: 'Kitan',
      role: 'Events Officer',
      bio:
          'My goal is to create opportunities for minority ethnic engineers to socialise and network. I hope we inspire each other to achieve great things in our fields.',
      imagePath: 'assets/kitan.jpeg',
      backgroundColor: Colors.brown.shade600,
      textColor: Colors.brown.shade50,
      url: 'https://www.linkedin.com/in/anuoluwakitan-oni-42143b1b1/',
    ),
    CardData(
      name: 'Eivile',
      role: 'Publicity Officer',
      bio:
          'My goal is to change the perception of engineering by bringing more BAME faces to light, aiding the creation of an uplifting culture of diversity <3',
      imagePath: 'assets/eivile.jpeg',
      backgroundColor: Colors.brown.shade700,
      textColor: Colors.brown.shade100,
      url: 'https://www.linkedin.com/in/eivile-rimkute-1b2934252/',
    ),
    CardData(
        name: 'Rahaf',
        role: 'Events Officer',
        bio:
            'My goal is to create a friendly, safe and welcoming environment for BAME students, and to encourage them to achieve their best in all life aspects!',
        imagePath: 'assets/Rahaf.jpeg',
        backgroundColor: Colors.brown.shade800,
        textColor: Colors.brown.shade100,
        url: ''),
    CardData(
      name: 'Vritika',
      role: 'Media Officer',
      bio:
          'My goal is to help BAME students feel confident in pursuing an engineering degree whilst being part of a community of like minded individuals who are here to support them!',
      imagePath: 'assets/vritika.jpeg',
      backgroundColor: Colors.brown.shade900,
      textColor: Colors.brown.shade100,
      url: 'https://www.linkedin.com/in/vritika-varsani/',
    ),
    CardData(
      name: 'David',
      role: 'Sports Officer',
      bio: '  My goal is to...',
      imagePath: 'assets/surayya.PNG',
      backgroundColor: Colors.brown.shade800,
      textColor: Colors.brown.shade100,
      url: 'https://www.linkedin.com/in/david-ezra-offei-manu-b28901274/',
    ),
    CardData(
      name: 'Nabhan',
      role: 'Alumni Officer',
      bio:
          'My goal is to help current students prepare for life after university and create new memories for graduates',
      imagePath: 'assets/nabhan.jpeg',
      backgroundColor: Colors.brown.shade700,
      textColor: Colors.brown.shade100,
      url: 'https://www.linkedin.com/in/nabhan-ahmed-518219222/',
    ),
    CardData(
      name: 'Nour',
      role: 'Outreach Officer',
      bio: '  My goal is to...',
      imagePath: 'assets/surayya.PNG',
      backgroundColor: Colors.brown.shade600,
      textColor: Colors.brown.shade100,
      url: 'https://www.linkedin.com/in/nour-zahran-859754274/',
    ),
    CardData(
      name: 'Parisha',
      role: 'Industry Representative',
      bio:
          'I aim to be as accessible and share as much of my experience as possible with our community; to be that role model and continue proving that we can and we will!',
      imagePath: 'assets/parisha.jpeg',
      backgroundColor: Colors.brown,
      textColor: Colors.brown.shade50,
      url: 'https://www.linkedin.com/in/parisha-mistry-b512b4168/',
    ),
    CardData(
      name: 'Hashim',
      role: 'Industry Representative',
      bio: '  My goal is to...',
      imagePath: 'assets/surayya.PNG',
      backgroundColor: Colors.brown.shade400,
      textColor: Colors.brown.shade900,
      url: 'https://www.linkedin.com/in/hashim-khan-24710b229/11',
    ),
    CardData(
      name: 'Awaab',
      role: 'Charity Officer',
      bio: '  My goal is to...',
      imagePath: 'assets/surayya.PNG',
      backgroundColor: Colors.brown.shade300,
      textColor: Colors.brown.shade900,
      url: '',
    ),
    CardData(
      name: 'Ajmal',
      role: 'Sponsorship Officer',
      bio: '  My goal is to...',
      imagePath: 'assets/surayya.PNG',
      backgroundColor: Colors.brown.shade200,
      textColor: Colors.brown.shade800,
      url: 'https://www.linkedin.com/in/mohamed-ajmal-b32583176/',
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
              color: Colors.red.shade50,
              child: Stack(
                children: [
                  CardSwiper(
                    cardsCount: cardDataList.length,
                    cardBuilder: (context, index, percentThresholdX,
                            percentThresholdY) =>
                        buildCard(cardDataList[index]),
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

  Widget buildCard(CardData card) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 70.0, 10, 70),
      child: Container(
        height: 550,
        decoration: BoxDecoration(
          color: card.backgroundColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(254, 230, 190, 138)
                          .withOpacity(0.7),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(card.imagePath, fit: BoxFit.contain),
                ),
              ),
            ),
            const SizedBox(height: 2),
            GestureDetector(
              onTap: () {
                _launchUrl(card.url);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  '  ${card.name} ',
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: card.textColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                '  ${card.role}',
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: card.textColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                card.bio,
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: card.textColor,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _performDelayedTransition(BuildContext context, HomeEvent event) {
    Future.delayed(const Duration(milliseconds: 100), () {
      context.read<HomeBloc>().add(event);
    });
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchEmail(String email) async {
    final Uri emailLaunchUri = Uri(scheme: 'mailto', path: email);

    if (!await launchUrl(emailLaunchUri)) {
      throw 'Could not launch $email';
    }
  }
}
