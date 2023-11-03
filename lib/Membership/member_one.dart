import 'package:flutter/material.dart';

class MemberOne extends StatelessWidget {
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
              child: Text(
                  'HI IM MEMBER PAGE, add congrats/join team animation and button for membership card'),
            ),
          ],
        ),
      ),
    );
  }
}
