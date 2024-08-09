// 4 is empowerment event and
// 12 is girls netball team

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
//import 'package:pay/pay.dart';

// Initialize Apple Pay
//var applePay = ApplePay();

// Initialize Google Pay
//var googlePay = GooglePay();

// Initialize PayPal
//var paypal = Paypal.init('YOUR_CLIENT_ID');

class EventsPage extends StatelessWidget {
  final String currentRoute;
  final PageController pageController;

  EventsPage({
    Key? key,
    required this.currentRoute,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Precache images
    for (final image in images) {
      precacheImage(NetworkImage(image), context);
    }

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.brown.shade100,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                child: FanCarouselImageSlider(
                  sliderHeight: 200,
                  expandImageHeight: 250,
                  imagesLink: images,
                  isAssets: true,
                  autoPlay: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.brown.shade200, // Change this to 200
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ExpansionTile(
                  title: Text(
                    'Sample Event 1\n location \n date',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.brown.shade800,
                    ),
                  ),
                  children: [
                    Text(
                      'Description for sample event 1:\n blah\n blah \n blah \n hehe :)\n',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.brown.shade800,
                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.brown.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ExpansionTile(
                  title: Text('Sample Event 2'),
                  children: [
                    Text(
                      'Description for sample event 2:\n blah\n blah \n blah \n hehe :)',
                    )
                    // Expanded content for Sample Event 2
                    // Add any widgets you want for this expansion tile
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Use the asset paths for images
  List<String> images = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.JPG',
    //'assets/4.jpg',
    'assets/5.jpeg',
    'assets/6.jpeg',
    'assets/7.jpeg',
    'assets/8.jpg',
    'assets/9.jpeg',
    'assets/10.jpg',
    'assets/11.jpg',
    //'assets/12.jpg',
    'assets/13.jpg',
    'assets/14.jpeg',
    'assets/15.jpg',
    'assets/16.jpg',
  ];
}

//var paymentItems = [
//  applePay,
//  googlePay,
//  paypal,
//];

//pay.showPaymentSheet(
//  context: context,
//  paymentItems: paymentItems,
//);
//pay.onResult(
//  (paymentResult) {
// Handle successful payment
//  }
//);
