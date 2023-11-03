import 'package:bame_engineers/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'Membership/membership.dart';
import 'bloc/membership_bloc.dart';
import 'settings.dart';
import 'partner.dart';
import 'feedback.dart';
import 'home_page.dart';

class BackMenuPage extends StatefulWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  final MembershipBloc bloc;
  final ZoomDrawerController backDrawerController;

  BackMenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
    required this.bloc,
    required this.backDrawerController,
  }) : super(key: key);

  @override
  State<BackMenuPage> createState() => _BackMenuState();
}

class _BackMenuState extends State<BackMenuPage> {
  void _navigateTo(MenuItem item) {
    if (item == BackMenuItems.membership) {
      _navigateToMembership();
    } else if (item == BackMenuItems.settings) {
      _navigateToSettings();
    } else if (item == BackMenuItems.feedback) {
      _navigateToFeedback();
    } else if (item == BackMenuItems.partner) {
      _navigateToPartner();
    } else if (item == BackMenuItems.home) {
      _navigateToHome();
    }
  }

  void _navigateToMembership() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MembershipPage(bloc: widget.bloc),
      ),
    );
  }

  void _navigateToSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
    );
  }

  void _navigateToFeedback() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FeedbackPage()),
    );
  }

  void _navigateToPartner() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PartnerPage()),
    );
  }

  void _navigateToHome() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(
          currentRoute: homeRoute,
          pageController: PageController(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            ...BackMenuItems.all
                .map((item) => buildBackMenuItem(
                      item,
                      widget.onSelectedItem,
                      widget.bloc,
                      widget.backDrawerController,
                      _navigateTo,
                    ))
                .toList(),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

Widget buildBackMenuItem(
  MenuItem item,
  ValueChanged<MenuItem> onSelectedItem,
  MembershipBloc bloc,
  ZoomDrawerController backDrawerController,
  void Function(MenuItem) navigateTo,
) {
  return Container(
    color: Colors.brown.shade50,
    child: ListTileTheme(
      selectedColor: Colors.brown,
      child: ListTile(
        selectedTileColor: Colors.brown.shade400,
        minLeadingWidth: 20,
        leading: Icon(item.icon, size: 30, color: Colors.brown.shade700),
        title: Text(
          item.title,
          style: GoogleFonts.roboto(fontSize: 18, color: Colors.brown.shade700),
        ),
        onTap: () {
          backDrawerController.toggle!();
          navigateTo(item); // Call the appropriate navigation function
        },
      ),
    ),
  );
}

class BackMenuItems {
  static const membership = MenuItem('Membership', Icons.badge_rounded);
  static const settings =
      MenuItem('Settings', Icons.miscellaneous_services_rounded);
  static const feedback = MenuItem('Feedback', Icons.comment_rounded);
  static const partner = MenuItem('Partner With Us', Icons.diversity_2_rounded);
  static const home = MenuItem('Return to Home', Icons.diversity_1_rounded);

  static const all = <MenuItem>[membership, settings, feedback, partner, home];
}

class MenuItem {
  final String title;
  final IconData icon;

  const MenuItem(this.title, this.icon);
}

class EngineeringIconButton extends StatelessWidget {
  final ZoomDrawerController backDrawerController;

  EngineeringIconButton({required this.backDrawerController});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      left: 20,
      child: IconButton(
        icon: Icon(
          Icons.engineering_rounded,
          size: 50,
          color: Colors.brown.shade700,
        ),
        onPressed: () {
          backDrawerController.toggle!(); // Open the Zoom drawer
        },
      ),
    );
  }
}
