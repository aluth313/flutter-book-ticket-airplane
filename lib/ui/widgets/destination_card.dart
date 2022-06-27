import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/detail_page.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String place;
  final String image;
  final double rate;

  const DestinationCard(
      {Key? key,
      required this.name,
      required this.place,
      required this.image,
      this.rate = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ));
      },
      child: Container(
        width: 200,
        height: 323,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: defaultMargin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kWhiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(image: AssetImage(image))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 54.5,
                  height: 30,
                  padding: EdgeInsets.only(bottom: 6, right: 2, left: 5.5),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(18))),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(right: 1),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'))),
                      ),
                      Text(
                        rate.toString(),
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    place,
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
