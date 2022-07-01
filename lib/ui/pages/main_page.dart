import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/page_cubit.dart';
import 'package:flutter_airplane/ui/pages/home_page.dart';
import 'package:flutter_airplane/ui/pages/setting_page.dart';
import 'package:flutter_airplane/ui/pages/transaction_page.dart';
import 'package:flutter_airplane/ui/pages/wallet_page.dart';
import 'package:flutter_airplane/ui/widgets/custom_bottom_navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                index: 0,
                urlImage: 'assets/icon_home.png',
              ),
              CustomBottomNavigation(
                index: 1,
                urlImage: 'assets/icon_booking.png',
              ),
              CustomBottomNavigation(
                index: 2,
                urlImage: 'assets/icon_card.png',
              ),
              CustomBottomNavigation(
                index: 3,
                urlImage: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
              children: [buildContent(currentIndex), customBottomNavigation()]),
        );
      },
    );
  }
}
