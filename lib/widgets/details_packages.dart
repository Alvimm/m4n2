import 'package:explore_mundo_app/utils/colors.dart';
import 'package:explore_mundo_app/utils/data.dart';
import 'package:explore_mundo_app/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class DetailsPackages extends StatelessWidget {
  final Places place;
  const DetailsPackages({super.key, required this.place});

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 30),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = MyColors.primary;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return Scaffold(
        backgroundColor: MyColors.secondary,
        extendBodyBehindAppBar: true,

        appBar: AppBar(
          foregroundColor: MyColors.secondary,
          backgroundColor: MyColors.background,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(place.image),
                  ),
                ),
              ),
               Container(
                  padding: const EdgeInsets.all(32),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: HeadingText(heading: place.title)),
                            Text(
                              place.from,
                              style: const TextStyle(
                                  color: MyColors.background, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: place.rating <= 75
                            ? Colors.red[500]
                            : Colors.yellow[500],
                      ),
                      Text(place.rating.toString()),
                    ],
                  ),
                ),
              buttonSection,
              Container(
                padding: const EdgeInsets.all(32),
                child: Text(place.description,
                    softWrap: true, style: const TextStyle(fontSize: 19)),
              ),
            ],
          ),
        ));
  }
}
