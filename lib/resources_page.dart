import 'package:flutter/material.dart';

import 'Membership/membership_card_page.dart';

class ResourcesPage extends StatelessWidget {
  final String currentRoute;
  final PageController pageController;
 
  const ResourcesPage({
    super.key,
    required this.currentRoute,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Resources Page Content'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the SettingsPage using the Navigator
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MembershipCardPage(),
            ),
          );

          // Animate to the page with the PageController
          pageController.animateToPage(
            1, // The index of the SettingsPage in your PageView
            duration: Duration(milliseconds: 500), // Animation duration
            curve: Curves.easeInOut, // Animation curve
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
