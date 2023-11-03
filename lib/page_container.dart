import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';
import 'events_page.dart';
import 'resources_page.dart';
import 'menu_drawer.dart';
import 'bloc/membership_bloc.dart';

class PageContainer extends StatefulWidget {
  final String currentRoute;
  final PageController pageController;
  final bool isEngineeringSelected;
  final void Function(bool) onIconSelected;
  final bool isUserMember;
  final bool isCommitteeMember;

  PageContainer({
    Key? key,
    required this.currentRoute,
    required this.pageController,
    required this.isEngineeringSelected,
    required this.onIconSelected,
    required this.isUserMember,
    required this.isCommitteeMember,
  }) : super(key: key);

  @override
  _PageContainerState createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  final mainDrawerController = ZoomDrawerController();

  int _currentPageIndex = 0;
  MenuItem currentItem = MenuItems.settings;
  late MembershipBloc _membershipBloc;
  bool isEngineeringSelected = false;

  @override
  void initState() {
    super.initState();
    _membershipBloc = MembershipBloc();
    _membershipBloc.updateMembership(
        widget.isUserMember, widget.isCommitteeMember);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ZoomDrawer(
            controller: mainDrawerController,
            menuScreen: MenuPage(
              currentItem: currentItem,
              onSelectedItem: (item) {
                setState(() => currentItem = item);
              },
              bloc: _membershipBloc,
              mainDrawerController: mainDrawerController,
            ),
            mainScreen: Stack(
              children: [
                PageView(
                  controller: widget.pageController,
                  children: [
                    HomePage(
                      currentRoute: widget.currentRoute,
                      pageController: widget.pageController,
                    ),
                    EventsPage(
                      currentRoute: widget.currentRoute,
                      pageController: widget.pageController,
                    ),
                    ResourcesPage(
                      currentRoute: widget.currentRoute,
                      pageController: widget.pageController,
                    ),
                  ],
                ),
                EngineeringIconButton(
                  isEngineeringSelected: isEngineeringSelected,
                  onPressed: () {
                    widget.onIconSelected(isEngineeringSelected);
                    setState(() {
                      isEngineeringSelected = !isEngineeringSelected;
                    });
                    mainDrawerController.open!();
                  },
                ),
              ],
            ),
            borderRadius: 24.0,
            showShadow: true,
            angle: -12.0,
            drawerShadowsBackgroundColor: Colors.brown,
            slideWidth: MediaQuery.of(context).size.width * 0.65,
          ),
        ],
      ),
      bottomNavigationBar: _getBottomNavigationBar(_currentPageIndex),
    );
  }

  BottomNavigationBar _getBottomNavigationBar(int currentIndex) {
    final items = [
      BottomNavigationBarItem(
        icon: Icon(
          _currentPageIndex == 0
              ? Icons.diversity_1_rounded
              : Icons.diversity_1_outlined,
          size: 26.0,
          color: _currentPageIndex == 0
              ? Colors.brown.shade700
              : Colors.brown.shade300,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          _currentPageIndex == 1
              ? Icons.calendar_month_rounded
              : Icons.calendar_month_outlined,
          size: 26.0,
          color: _currentPageIndex == 1
              ? Colors.brown.shade700
              : Colors.brown.shade300,
        ),
        label: 'Events',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          _currentPageIndex == 2
              ? Icons.auto_stories_rounded
              : Icons.auto_stories_outlined,
          size: 26.0,
          color: _currentPageIndex == 2
              ? Colors.brown.shade700
              : Colors.brown.shade300,
        ),
        label: 'Resources',
      ),
    ];

    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Colors.brown.shade100,
      selectedLabelStyle: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        color: Colors.brown.shade700,
      ),
      unselectedLabelStyle: GoogleFonts.poppins(
        fontSize: 14.0,
        color: Colors.brown.shade500,
      ),
      onTap: (index) {
        setState(() {
          _currentPageIndex = index;
          widget.pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
        });
      },
      items: items,
    );
  }
}

class EngineeringIconButton extends StatelessWidget {
  final bool isEngineeringSelected;
  final VoidCallback onPressed;

  EngineeringIconButton({
    required this.isEngineeringSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      left: 20,
      child: IconButton(
        icon: Icon(
          isEngineeringSelected
              ? Icons.engineering_rounded
              : Icons.engineering_outlined,
          size: 50,
          color: Colors.brown.shade700,
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
