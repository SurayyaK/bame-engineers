import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xen_popup_card/xen_card.dart';

class SettingsPage extends StatelessWidget {
  // Define XenCardGutter here
  XenCardGutter getGutter(BuildContext context) {
    return XenCardGutter(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Close the dialog
          },
          child: Text(
            'Close',
            style: GoogleFonts.poppins(
              color: Colors.brown.shade50,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton({
    required String text,
    required IconData icon,
    required Color backgroundColor,
    required String assetImage,
    required BuildContext context,
  }) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return XenPopupCard(
                gutter: getGutter(context),
                body: Container(
                  height: 600, // Adjust the height of the card itself
                  child: Column(
                    children: [
                      Image.asset(assetImage),
                      SizedBox(
                          height: 15), // Add spacing between image and text
                      Text(
                        "I'm still building this page! 💪🏼😤 \n Let me know if you have any \n suggestions for what to add and be sure to stay tuned for the next update! 🤗",
                        style: GoogleFonts.poppins(
                          color: Colors.brown.shade700,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.brown.shade50,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.brown.shade50,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Stack(
        children: [
          Center(
            child: RiveAnimation.asset(
              'assets/basic_spin_gears.riv',
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 60),

                // Voiceover button
                buildButton(
                  text: 'Voiceover',
                  icon: Icons.volume_up_rounded,
                  backgroundColor: Colors.brown.shade300,
                  assetImage: 'assets/meme1.jpg',
                  context: context,
                ),

                SizedBox(height: 60),

                // Display button
                buildButton(
                  text: 'Display',
                  icon: Icons.brightness_4_rounded,
                  backgroundColor: Colors.brown.shade500,
                  assetImage: 'assets/meme1.jpg',
                  context: context,
                ),

                SizedBox(height: 60),

                // Notifications button
                buildButton(
                  text: 'Notifications',
                  icon: Icons.notifications_rounded,
                  backgroundColor: Colors.brown.shade700,
                  assetImage: 'assets/meme1.jpg',
                  context: context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
