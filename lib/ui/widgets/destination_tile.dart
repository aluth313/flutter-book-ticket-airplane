import 'package:flutter/material.dart';
import 'package:flutter_airplane/models/destination_model.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/detail_page.dart';

class DestinationTile extends StatelessWidget {
  final DestinationModel destination;

  const DestinationTile({Key? key, required this.destination})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          )),
      child: Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(destination.imageUrl))),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name,
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    destination.city,
                    overflow: TextOverflow.ellipsis,
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
              destination.rating.toString(),
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            SizedBox(
              width: 6,
            )
          ],
        ),
      ),
    );
  }
}
