import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Stack(children: [
        Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle voiceover button tap
              },
              child: Text('HI IM FEEDBACK PAGE'),
            ),
          ]),
        ),
      ]),
    );
  }
}
