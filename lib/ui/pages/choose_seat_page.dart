import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/checkout_page.dart';
import 'package:flutter_airplane/ui/widgets/custom_button.dart';
import 'package:flutter_airplane/ui/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return SafeArea(
        child: Container(
          child: Text(
            'Select Your\nFavorite Seat',
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            // available
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'))),
            ),
            Text(
              'Available',
              style: blackTextStyle.copyWith(fontWeight: regular),
            ),
            // selected
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'))),
            ),
            Text(
              'Selected',
              style: blackTextStyle.copyWith(fontWeight: regular),
            ),
            // unavailable
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle.copyWith(fontWeight: regular),
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            // seat label
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      'B',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      'C',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      'D',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
              ],
            ),
            // seat 1
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 2,
                ),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '1',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
            // seat 2
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '2',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
            // seat 3
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 1,
                ),
                SeatItem(
                  status: 1,
                ),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '3',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
            // seat 4
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '4',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
            // seat 5
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '5',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: regular),
                    ))),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
            // price
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: purpleTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget continueButton() {
      return CustomButtom(
        title: 'Continue to Checkout',
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return CheckoutPage();
            },
          ));
        },
        margin: EdgeInsets.only(top: 30, bottom: 46),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultRadius),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          continueButton(),
        ],
      ),
    );
  }
}
