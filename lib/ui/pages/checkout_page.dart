import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/auth_cubit.dart';
import 'package:flutter_airplane/models/transaction_model.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/success_checkout_page.dart';
import 'package:flutter_airplane/ui/widgets/booking_details.dart';
import 'package:flutter_airplane/ui/widgets/custom_button.dart';
import 'package:flutter_airplane/ui/widgets/custom_interests.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;

  const CheckoutPage(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_checkout.png'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage(transaction.destination.imageUrl))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.destination.name,
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        transaction.destination.city,
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 1),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_star.png'))),
                ),
                Text(
                  transaction.destination.rating.toString(),
                  style: blackTextStyle.copyWith(fontWeight: medium),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            SizedBox(
              height: 10,
            ),
            BookingDetails(
                name: 'Traveler',
                details: '${transaction.amountOfTraveler} person'),
            BookingDetails(name: 'Seat', details: transaction.selectedSeats),
            BookingDetails(
              name: 'Insurance',
              details: transaction.insurance ? 'YES' : 'NO',
              style: transaction.insurance
                  ? greenTextStyle.copyWith(fontWeight: semiBold)
                  : redTextStyle.copyWith(fontWeight: semiBold),
            ),
            BookingDetails(
              name: 'Refundable',
              details: transaction.refundable ? 'YES' : 'NO',
              style: transaction.refundable
                  ? greenTextStyle.copyWith(fontWeight: semiBold)
                  : redTextStyle.copyWith(fontWeight: semiBold),
            ),
            BookingDetails(
                name: 'VAT',
                details: '${(transaction.vat * 100).toStringAsFixed(0)}%'),
            BookingDetails(
                name: 'Price',
                details: NumberFormat.currency(
                        locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                    .format(transaction.price)),
            BookingDetails(
              name: 'Grand Total',
              details: NumberFormat.currency(
                      locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                  .format(transaction.grandTotal),
              style: purpleTextStyle.copyWith(fontWeight: semiBold),
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Details',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        margin: EdgeInsets.only(right: 16),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 23),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/image_card.png'))),
                        child: Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              margin: EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/icon_plane.png'))),
                            ),
                            Text(
                              'Pay',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16, fontWeight: medium),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'IDR ',
                                      decimalDigits: 0)
                                  .format(state.user.balance),
                              style: blackTextStyle.copyWith(
                                  fontSize: 18, fontWeight: medium),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Current Balance',
                              style: greyTextStyle.copyWith(fontWeight: light),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }

          return SizedBox();
        },
      );
    }

    Widget buttonPay() {
      return CustomButtom(
        title: 'Pay Now',
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SuccessCheckoutPage(),
              ));
        },
        margin: EdgeInsets.only(top: 30),
      );
    }

    Widget termandconditions() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultRadius),
        children: [
          header(),
          bookingDetails(),
          paymentDetails(),
          buttonPay(),
          termandconditions(),
        ],
      ),
    );
  }
}
