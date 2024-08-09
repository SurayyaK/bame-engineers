import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'partner2.dart';
import 'partner.dart';

class PartnerThreePage extends StatefulWidget {
  @override
  _PartnerThreePageState createState() => _PartnerThreePageState();
}

class _PartnerThreePageState extends State<PartnerThreePage> {
  late InAppWebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
    final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
    final GlobalKey<ExpansionTileCardState> cardC = GlobalKey();
    final GlobalKey<ExpansionTileCardState> cardD = GlobalKey();

    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Stack(
        children: [
          SafeArea(
            //change list view to column
            child: ListView(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 500,
                top: 10,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 30,
                            color: Colors.brown.shade700,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => PartnerTwoPage(),
                              ),
                            );
                          }),
                      const SizedBox(
                          width: 10), // Spacing between icon and text
                      Expanded(
                        child: Text(
                          "Discover how we can collaborate to make a positive impact together! 🫱🏾‍🫲🏿",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown.shade700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Inserting ExpansionTileCards
                // ListView
                _buildExpansionTileCard(
                    cardKey: cardA,
                    title: 'EmpowerMEnt',
                    subtitle: 'Stories of Success and Resilience 💪🏼😤',
                    body:
                        'Join us and share your journey through a physical or online talk. We curate and showcase these inspiring stories on our app, empowering the next generation, worldwide! 🤩'),
                const SizedBox(height: 10),
                _buildExpansionTileCard(
                    cardKey: cardB,
                    title: 'Experience',
                    subtitle: 'Bridging the Opportunity Gap',
                    body:
                        "Offer students hands-on learning experiences and insights into your company's operations through site visits. Engage in meaningful projects with students, connecting academia and industry. Or join forces with aspiring talent in hackathons that spark creativity and problem-solving!"),
                const SizedBox(height: 10),
                _buildExpansionTileCard(
                    cardKey: cardC,
                    title: 'Outreach',
                    subtitle: 'The BAME Representation We Need!',
                    body:
                        "We're committed to forging partnerships that bring value in different ways, from securing equipment to showcase diverse careers to establishing collaborations like our successful one with STEAMWORKS, to provide paid opportunities for our students. Let's explore mutually beneficial initiatives together!"),
                const SizedBox(height: 10),
                _buildExpansionTileCard(
                    cardKey: cardD,
                    title: 'Stay Connected',
                    subtitle: 'Add Us To Your Mailing List :)',
                    body:
                        "Add bameengsoc@sheffield.ac.uk to your mailing list, and we'll share your latest opportunities with our diverse student community!"),
              ],
            ),
          ),
          // Draggable bottom sheet with InAppWebView
          DraggableScrollableSheet(
            initialChildSize: 0.40,
            minChildSize: 0.40,
            maxChildSize: 0.5,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.brown.shade400,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Ready to discuss ideas?',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InAppWebView(
                        initialUrlRequest: URLRequest(
                            url: Uri.parse("https://calendly.com/skausar1")),
                        onWebViewCreated: (InAppWebViewController controller) {
                          webViewController = controller;
                        },
                        onProgressChanged:
                            (InAppWebViewController controller, int progress) {
                          // Update the progress bar or any progress indicator
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildExpansionTileCard({
    required GlobalKey<ExpansionTileCardState> cardKey,
    required String title,
    required String subtitle,
    required String body,
  }) {
    return ExpansionTileCard(
      key: cardKey,
      baseColor: Colors.brown.shade400,
      expandedColor: Colors.brown.shade500,
      title: Text(
        title,
        style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.brown.shade50,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.brown.shade50,
        ),
      ),
      children: <Widget>[
        Divider(
          thickness: 1.0,
          height: 1.0,
          color: Colors.brown.shade900,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            body,
            style: GoogleFonts.lato(
              fontSize: 16,
              color: Colors.brown.shade50,
            ),
          ),
        ),
      ],
    );
  }
}
