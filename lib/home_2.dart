import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bloc/home_bloc.dart';

class HomeTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.delta.dy > 0) {
                context.read<HomeBloc>().add(SwipeDownEvent());
              } else if (details.delta.dy < 0) {
                if (state is HomeInitial) {
                  context.read<HomeBloc>().add(SwipeUpEvent());
                }
              }
            },
            child: Container(
              color: Colors.brown.shade100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.brown.shade700,
                          ),
                          onPressed: () {
                            context
                                .read<HomeBloc>()
                                .add(GoToHomeInitialEvent());
                          },
                        ),
                        SizedBox(width: 20), // Adjust spacing as needed
                        Image.asset(
                          'assets/Logo.png',
                          width: 250, // Adjust the width as needed
                          height: 250, // Adjust the height as needed
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            _launchUrl(
                                'https://chat.whatsapp.com/FdNE0Sws15tGPKhazVU3AT');
                          },
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.brown.shade50,
                          ),
                          label: Text(
                            'Whatsapp GC',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.brown.shade50,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 10, // Add elevation
                            minimumSize: Size(200, 50), // Set width and height
                          ),
                        ),
                        SizedBox(height: 20), // Add a constant gap
                        ElevatedButton.icon(
                          onPressed: () {
                            _launchUrl('https://instagram.com/bame.engineers');
                          },
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.brown.shade50,
                          ),
                          label: Text(
                            'Instagram',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.brown.shade50,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 10, // Add elevation
                            minimumSize: Size(200, 50), // Set width and height
                          ),
                        ),
                        SizedBox(height: 20), // Add a constant gap
                        ElevatedButton.icon(
                          onPressed: () {
                            _launchUrl('https://www.tiktok.com/@bameesoc');
                          },
                          icon: Icon(
                            FontAwesomeIcons.tiktok,
                            color: Colors.brown.shade50,
                          ),
                          label: Text(
                            'Tiktok',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.brown.shade50,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 10, // Add elevation
                            minimumSize: Size(200, 50), // Set width and height
                          ),
                        ),
                        SizedBox(height: 20), // Add a constant gap
                        ElevatedButton.icon(
                          onPressed: () {
                            _launchEmail('bameengsoc@sheffield.ac.uk');
                          },
                          icon: Icon(
                            Icons.email,
                            color: Colors.brown.shade50,
                          ),
                          label: Text(
                            'Email',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.brown.shade50,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 10, // Add elevation
                            minimumSize: Size(200, 50), // Set width and height
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton.icon(
                          onPressed: () {
                            _launchUrl(
                                'https://www.linkedin.com/company/bame-engineers-society-uos/');
                          },
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.brown.shade50,
                          ),
                          label: Text(
                            'LinkedIn',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.brown.shade50,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 10, // Add elevation
                            minimumSize: Size(200, 50), // Set width and height
                          ),
                        ), // Add a constant gap
                      ],
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
