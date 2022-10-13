import 'package:flutter/material.dart';
import 'nav_slide_screen/homepage.dart';
import 'nav_slide_screen/rewards.dart';
import 'nav_slide_screen/settingscr.dart';
import 'nav_slide_screen/booking.dart';
import 'nav_slide_screen/favorite.dart';
 class SearchPage extends StatelessWidget {
   const SearchPage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return HomeScreen();
   }
 }
 class FavoritePage extends StatelessWidget {
   const FavoritePage({Key? key}) : super(key: key);
   @override
   Widget build(BuildContext context) {
     return FavoriteBar();
   }
 }

class RewardsPages extends StatelessWidget {
  const RewardsPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RewardPoints();
  }
}
class BookingPages extends StatelessWidget {
  const BookingPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BookedTrip();
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingTab();
  }
}
