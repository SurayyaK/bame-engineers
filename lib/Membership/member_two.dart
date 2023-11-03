import 'package:flutter/material.dart';

class MemberTwo extends StatelessWidget {
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
                  'HI IM Committee MEMBER PAGE, add hi five/touch/hug animation and button for membership card and view feedback and qr code scan'),
            ),
          ],
        ),
      ),
    );
  }
}
