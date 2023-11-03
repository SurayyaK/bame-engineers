import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle button tap
              },
              child:
                  Text('HI IM NOT MEMBER PAGE, explain how to become a member'),
            ),
          ],
        ),
      ),
    );
  }
}
