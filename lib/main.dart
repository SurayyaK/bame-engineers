import 'package:bame_engineers/settings.dart';
import 'package:flutter/material.dart';

import 'page_container.dart';
import 'home_page.dart';
import 'events_page.dart';
import 'resources_page.dart';

const String homeRoute = '/';
const String eventsRoute = '/events';
const String resourcesRoute = '/resources';
const String settingsRoute = '/settings';

void main() {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final pageController = PageController();
  bool isEngineeringSelected = false;
  void updateEngineeringSelected(bool isSelected) {
    isEngineeringSelected = isSelected;
  }

  runApp(
    MaterialApp(
      title: 'BAME Engineers',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: createMaterialColor(Colors.brown.shade200),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.brown,
        ).copyWith(
          secondary: Colors.brown.shade300,
          background: Colors.brown.shade200,
        ),
      ),
      home: PageContainer(
        isUserMember: false,
        isCommitteeMember: false,
        currentRoute: homeRoute,
        pageController: pageController,
        onIconSelected: updateEngineeringSelected,
        isEngineeringSelected: isEngineeringSelected,
      ),
    ),
  );
}

Widget _buildPage(BuildContext context, String routeName, String currentRoute,
    PageController pageController) {
  switch (routeName) {
    case homeRoute:
      return HomePage(
        currentRoute: currentRoute,
        pageController: PageController(),
      );
    case eventsRoute:
      return EventsPage(
        currentRoute: currentRoute,
        pageController: PageController(),
      );
    case resourcesRoute:
      return ResourcesPage(
        currentRoute: currentRoute,
        pageController: PageController(),
      );
    case settingsRoute:
      return SettingsPage();
    default:
      return const SizedBox();
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
