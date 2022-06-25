import 'package:flutter/material.dart';
import 'package:flutter_airplane/ui/pages/home_page.dart';
import 'package:flutter_airplane/ui/widgets/custom_bottom_navigation.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: 30, right: 24, left: 24),
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigation(
                urlImage: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigation(
                urlImage: 'assets/icon_booking.png',
              ),
              CustomBottomNavigation(
                urlImage: 'assets/icon_card.png',
              ),
              CustomBottomNavigation(
                urlImage: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent(){
      return HomePage();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(children: [
        buildContent(), 
        customBottomNavigation()]),
    );
  }
}
