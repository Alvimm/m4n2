import 'package:explore_mundo_app/utils/colors.dart';
import 'package:explore_mundo_app/widgets/details_packages.dart';
import 'package:flutter/material.dart';
import 'package:explore_mundo_app/utils/data.dart';

class BannerDestinations extends StatelessWidget {
  const BannerDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: dataPlaces
            .map((place) => DestinationContainer(place: place))
            .toList(),
      ),
    );
  }
}

class DestinationContainer extends StatelessWidget {
  final Places place;

  const DestinationContainer({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsPackages(place: place)),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        width: MediaQuery.of(context).size.width * .9,
        child: Stack(
          children: [
            destinationImage(context),
            destinationText(context),
          ],
        ),
      ),
    );
  }

  Widget destinationImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: MyColors.textPrimary, width: 2)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          place.image,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * .33,
        ),
      ),
    );
  }

  Widget destinationText(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .09,
      decoration: const BoxDecoration(
        color: MyColors.background,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
      ),
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      
      child: Column(
        children: [
          Text(
            place.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Text(
            place.from,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
