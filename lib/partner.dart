import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';
import 'bloc/partner_bloc.dart';
import 'partner1.dart';
import 'partner2.dart';

class PartnerPage extends StatefulWidget {
  @override
  _PartnerPageState createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PartnerBloc>(
      create: (context) => PartnerBloc(),
      child: BlocConsumer<PartnerBloc, PartnerState>(
        listener: (context, state) {
          if (state is PartnerOne) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PartnerOnePage()),
            );
          } else if (state is PartnerTwo) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PartnerTwoPage()),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor:
                Colors.brown.shade100, // Background color set to brown shade 50
            body: Stack(
              children: [
                // Reintegrate the Rive animation
                Align(
                  alignment: Alignment.center,
                  child: RiveAnimation.asset(
                    'assets/handshake.riv', // Ensure this path is correct
                    fit: BoxFit.contain,
                  ),
                ),
                SafeArea(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios_rounded,
                                size: 30, color: Colors.brown.shade700),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.all(10.0),
                          children: [
                            Text(
                              "Welcome to the University of Sheffield's BAME Engineers Society!! 🥳. \nOur mission is to create a supportive network for BAME engineers, where members can connect, collaborate, and thrive.",
                              style: GoogleFonts.poppins(
                                color: Colors.brown.shade700,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 120),
                            ElevatedButton(
                              onPressed: () {
                                context
                                    .read<PartnerBloc>()
                                    .add(GoToPartnerOneEvent());
                              },
                              child: Text(
                                'Explore Our Initiatives 🤗',
                                style: GoogleFonts.poppins(
                                  color: Colors.brown.shade50,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: Colors.brown.shade700,
                                  alignment: Alignment.center),
                            ),
                            SizedBox(height: 100),
                            Text(
                              'Want to support our mission?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: Colors.brown.shade700,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.brown.shade700,
                                  alignment: Alignment.bottomCenter),
                              child: Text(
                                'Sponsor Us!',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  color: Colors.brown.shade50,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 100),
                            Text(
                              'Are you a BAME business?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: Colors.brown.shade700,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
// The new button for navigating to PartnerTwoPage
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.brown.shade700,
                              ),
                              onPressed: () {
                                context
                                    .read<PartnerBloc>()
                                    .add(GoToPartnerTwoEvent());
                              },
                              child: Text(
                                'Find out how we can collaborate!',
                                style: GoogleFonts.poppins(
                                  color: Colors.brown.shade50, // Text color
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
