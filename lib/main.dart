import 'package:flutter/material.dart';
import 'package:travel_booking_app/pages/detail.dart';
import 'package:travel_booking_app/pages/home.dart';
import 'package:travel_booking_app/theme/theme.dart';

void main() {
  runApp(const TravelBookingApp());
}

class TravelBookingApp extends StatelessWidget {
  const TravelBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) => HomePage(),
        'detail': (context) => DetailPage(),
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: customLight,
    );
  }
}
