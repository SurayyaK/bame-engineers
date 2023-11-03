import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:bame_engineers/bloc/membership_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bame_engineers/back_menu.dart';

class MembershipPage extends StatefulWidget {
  final MembershipBloc bloc;

  MembershipPage({required this.bloc});

  @override
  _MembershipPageState createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  // Initialize backDrawerController within initState
  late ZoomDrawerController backDrawerController;
  MenuItem currentItem = BackMenuItems.membership;

  @override
  void initState() {
    super.initState();
    backDrawerController = ZoomDrawerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Stack(
        children: [
          // Your main content based on MembershipState
          BlocBuilder<MembershipBloc, MembershipState>(
            bloc: widget.bloc,
            builder: (context, state) {
              // Return different bodies based on MembershipState
              Widget membershipWidget;

              switch (state) {
                case MembershipState.notMember:
                  membershipWidget = MembershipNotMemberWidget(
                    backDrawerController: backDrawerController,
                    currentItem: currentItem,
                    onSelectedItem: (item) {
                      setState(() => currentItem = item);
                    },
                  );
                  break;
                case MembershipState.userMember:
                  membershipWidget = MembershipUserMemberWidget();
                  break;
                case MembershipState.committeeMember:
                  membershipWidget = MembershipCommitteeMemberWidget();
                  break;
                default:
                  membershipWidget = Text('Unknown Membership State');
                  break;
              }

              return Stack(
                children: [
                  membershipWidget,
                  // EngineeringIconButton in the top left corner
                  EngineeringIconButton(
                      backDrawerController: backDrawerController),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class MembershipNotMemberWidget extends StatelessWidget {
  final ZoomDrawerController backDrawerController;
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  MembershipNotMemberWidget({
    required this.backDrawerController,
    required this.currentItem,
    required this.onSelectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ZoomDrawer(
            mainScreen: MembershipPage(bloc: context.read<MembershipBloc>()),
            controller: backDrawerController,
            menuScreen: BackMenuPage(
              currentItem: currentItem,
              onSelectedItem: onSelectedItem,
              bloc: context.read<MembershipBloc>(),
              backDrawerController: backDrawerController,
            ),
          ),
          Text('You are not a member'),
        ],
      ),
    );
  }
}

class MembershipUserMemberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You are a user member'),
          // Add any other content or buttons for user members here
        ],
      ),
    );
  }
}

class MembershipCommitteeMemberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You are a committee member'),
          // Add any other content or buttons for committee members here
        ],
      ),
    );
  }
}
