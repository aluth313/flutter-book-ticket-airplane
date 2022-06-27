import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image_destination1.png'))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95)
              ]),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            // emblem
            Container(
              width: 108,
              height: 24,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_emblem.png'))),
            ),
            // title
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          overflow: TextOverflow.ellipsis,
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
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
                    '4.8',
                    style: whiteTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              margin: EdgeInsets.only(
                  top: 30, right: defaultMargin, left: defaultMargin),
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(
                      height: 2.6,
                      fontWeight: regular),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          backroundImage(),
          customShadow(),
          content(),
        ],
      ),
    );
  }
}
