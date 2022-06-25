import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/widgets/destination_card.dart';
import 'package:flutter_airplane/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                  name: 'Lake Ciliwung',
                  place: 'Tangerang',
                  image: 'assets/image_destination1.png',
                  rate: 4.8),
              DestinationCard(
                  name: 'White House',
                  place: 'Spain',
                  image: 'assets/image_destination2.png',
                  rate: 4.7),
              DestinationCard(
                  name: 'Hill Heyo',
                  place: 'Monaco',
                  image: 'assets/image_destination3.png',
                  rate: 4.8),
              DestinationCard(
                  name: 'Menarra',
                  place: 'Japan',
                  image: 'assets/image_destination4.png',
                  rate: 5.0),
              DestinationCard(
                  name: 'Payung Teduh',
                  place: 'Singapore',
                  image: 'assets/image_destination5.png',
                  rate: 4.8),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            DestinationTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
