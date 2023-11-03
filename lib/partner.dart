import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:xen_popup_card/xen_card.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnerPage extends StatelessWidget {
  XenCardGutter getGutter(BuildContext context) {
    return XenCardGutter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 120,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Handle the "Submit" button tap
                // Store the message in the "messages" accessible to committee members
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero, // Remove any padding
                backgroundColor: Colors.brown.shade700, // Background color
              ),
              child: Text(
                'Submit',
                style: GoogleFonts.poppins(
                  color: Colors.brown.shade50,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Stack(
        children: [
          // Rive Animation
          Align(
            alignment: Alignment.center,
            child: RiveAnimation.asset(
              'assets/handshake.riv',
              fit: BoxFit.contain,
            ),
          ),
          // Main Content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 60),
                Container(
                  height: 300,
                  width: 350,
                  child: Text(
                    "\nWelcome to the University of Sheffield's BAME Engineers Society!! 🥳\nOur mission is to create a supportive network for BAME engineers, where members can connect, collaborate, and thrive.",
                    style: GoogleFonts.poppins(
                      color: Colors.brown.shade700,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return XenPopupCard(
                          gutter: getGutter(context),
                          body: Container(
                            height: 500, // Adjust the height of the card itself
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      size: 30,
                                      color: Colors.brown.shade700,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(
                                          context); // Close the dialog
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ), // Add input fields for name, organization, role, and message
                                // Example TextField:
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Organisation',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Role',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    labelText: 'Message',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Collaborate With Us 🤗',
                    style: GoogleFonts.poppins(
                      color: Colors.brown.shade50,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 170),
                Container(
                  width: 350,
                  height: 60,
                  child: Text(
                    'Wondering how we can work together to build bridges and break barriers?',
                    style: GoogleFonts.poppins(
                      color: Colors.brown.shade700,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle notifications button tap
                  },
                  child: Text(
                    'Explore Our Initiatives',
                    style: GoogleFonts.poppins(
                      color: Colors.brown.shade50,
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
    );
  }
}
