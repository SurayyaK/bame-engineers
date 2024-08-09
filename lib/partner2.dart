import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'partner3.dart'; // Make sure this path is correct
import 'bloc/partner_bloc.dart'; // Make sure this path is correct

class PartnerTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PartnerBloc, PartnerState>(
        listener: (context, state) {
          // Listening for the specific state to navigate to PartnerThreePage
          if (state is PartnerThree) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PartnerThreePage()),
            );
          }
        },
        builder: (context, state) {
          // Building UI based on the current state
          return Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/5.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: SafeArea(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 0, 0),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_back_ios_rounded,
                                      size: 30, color: Colors.brown.shade700),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 45.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.brown.shade700.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Empowering BAME Businesses",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.karma(
                                    color: Colors.brown.shade50,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      Colors.brown.shade800.withOpacity(0.65),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "We're dedicated to supporting BAME businesses by incorporating them into our network through catering services and creating unique partnerships. This allows us to offer special discounts and opportunities to our members while promoting and uplifting the community.",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.brown.shade50,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                context
                                    .read<PartnerBloc>()
                                    .add(GoToPartnerThreeEvent());
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.brown.shade50),
                                foregroundColor: MaterialStateProperty.all(
                                    Colors.brown.shade700),
                              ),
                              child: Text(
                                "Current Partnerships",
                                style: GoogleFonts.montserrat(),
                              ),
                            ),
                            Spacer(flex: 2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.2,
                minChildSize: 0.2,
                maxChildSize: 1,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.brown.shade700,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Ready to discuss ideas? \nSwipe up to book a meeting!",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 700,
                            child: InAppWebView(
                              initialUrlRequest: URLRequest(
                                  url: Uri.parse(
                                      "https://calendly.com/skausar1")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
