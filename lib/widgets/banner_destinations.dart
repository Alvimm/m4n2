import 'package:explore_mundo_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:explore_mundo_app/utils/data.dart';
import 'package:ionicons/ionicons.dart';

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

class DestinationContainer extends StatefulWidget {
  final Places place;

  const DestinationContainer({super.key, required this.place});

  @override
  _DestinationContainerState createState() => _DestinationContainerState();
}

class _DestinationContainerState extends State<DestinationContainer> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      width: MediaQuery.of(context).size.width * .9,
      child: Stack(
        children: [
          buildDestinationImage(context),
          buildDestinationText(context),
        ],
      ),
    );
  }

  Widget buildDestinationImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: Colors.black.withOpacity(0.7), width: 3)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          widget.place.image,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * .3,
        ),
      ),
    );
  }

  Widget buildDestinationText(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: MyColors.background,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.place.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _isClicked = !_isClicked;
                  });
                },
                icon:
                    Icon(_isClicked ? Ionicons.heart : Ionicons.heart_outline),
              ),
            ],
          ),
          Text(
            widget.place.from,
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
