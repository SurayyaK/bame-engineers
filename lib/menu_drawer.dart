import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'Membership/membership.dart';
import 'bloc/membership_bloc.dart';
import 'settings.dart';
import 'partner.dart';
import 'feedback.dart';

class MenuPage extends StatefulWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  final MembershipBloc bloc;
  final ZoomDrawerController mainDrawerController;

  MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
    required this.bloc,
    required this.mainDrawerController,
  }) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuState();
}

class _MenuState extends State<MenuPage> {
  @override
  Widget build(BuildContext innerContext) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Brown.shade700 iOS back icon button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 30,
                  color: Colors.brown.shade700,
                ),
                onPressed: () {
                  widget.mainDrawerController.close!();
                },
              ),
            ),
            // Spacer between the back button and menu items
            SizedBox(height: 140),
            ...MenuItems.all
                .map((item) => buildMenuItem(
                    innerContext,
                    item,
                    widget.onSelectedItem,
                    widget.bloc,
                    widget.mainDrawerController))
                .toList(),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem(
    BuildContext context,
    MenuItem item,
    ValueChanged<MenuItem> onSelectedItem,
    MembershipBloc bloc,
    ZoomDrawerController mainDrawerController) {
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
          mainDrawerController.toggle!();
          // Navigate to different pages based on the selected item
          if (item == MenuItems.membership) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MembershipPage(bloc: bloc)),
            );
          } else if (item == MenuItems.settings) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingsPage(),
              ),
            );
          } else if (item == MenuItems.feedback) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeedbackPage()),
            );
          } else if (item == MenuItems.partner) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PartnerPage()),
            );
          }
        },
      ),
    ),
  );
}

class MenuItems {
  static const membership = MenuItem('Membership', Icons.badge_rounded);
  static const settings =
      MenuItem('Settings', Icons.miscellaneous_services_rounded);
  static const feedback = MenuItem('Feedback', Icons.comment_rounded);
  static const partner = MenuItem('Partner With Us', Icons.diversity_2_rounded);
  // static const home = MenuItem('Return to Home', Icons.home)

  static const all = <MenuItem>[
    membership,
    settings,
    feedback,
    partner,
    //home,
  ];
}

class MenuItem {
  final String title;
  final IconData icon;

  const MenuItem(this.title, this.icon);
}
