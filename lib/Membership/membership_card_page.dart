import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Key superkey = const Key('superkey');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlipCard',
        theme: ThemeData.dark(),
        home: MembershipCardPage(),
        key: superkey);
  }
}

class MembershipCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _renderContent(context),
        ],
      ),
    );
  }

  Widget _renderContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.brown.shade700, // Change icon color
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          Expanded(
            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              side: CardSide.FRONT,
              speed: 1000,
              front: Container(
                decoration: const BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/Logo.png',
                      width: 250, // Adjust the width as needed
                      height: 250, // Adjust the height as needed
                    ),
                    Text('Click here to flip back',
                        style: GoogleFonts.courgette(
                          fontSize: 18,
                          color: Colors.brown.shade50,
                        )),
                  ],
                ),
              ),
              back: Container(
                decoration: const BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Click here to flip front',
                        style: GoogleFonts.courgette(
                          fontSize: 18,
                          color: Colors.brown.shade50,
                        )),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 3,
            color: Colors.brown,
          ),
          SizedBox(
            height: 350,
            child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                'Heavenly dessert 20% \nFranksters 20% \nCozy Corner 10% \nCha Cha Chai 10% \nSundaes Gelato 10% \n ',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
