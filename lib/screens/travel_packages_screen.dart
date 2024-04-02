// ignore_for_file: library_private_types_in_public_api
import 'package:explore_mundo_app/utils/colors.dart';
import 'package:explore_mundo_app/utils/data.dart';
import 'package:explore_mundo_app/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelPackagesScreen extends StatefulWidget {
  const TravelPackagesScreen({super.key});

  @override
  _TravelPackagesScreenState createState() => _TravelPackagesScreenState();
}

class _TravelPackagesScreenState extends State<TravelPackagesScreen> {
  String _searchTerm = '';
  

  @override
  Widget build(BuildContext context) {
        final filteredData = dataPlaces
        .where((place) => place.title.toLowerCase().contains(_searchTerm.toLowerCase()))
        .toList();

    return Column(
      children: [
        CustomSearchBar(
          onSearch: (search) {
            setState(() {
              _searchTerm = search;
            });
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredData.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white54,
                margin: const EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Image.asset(
                        filteredData[index].image,
                        fit: BoxFit.cover,
                        height: 200,
                        width: 150,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: [
                              Text(filteredData[index].title,
                                  style: const TextStyle(fontSize: 20)),
                              Text(filteredData[index].from,
                                  style: const TextStyle(fontSize: 15)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 80, right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: filteredData[index].rating <= 75
                                          ? Colors.red[500]
                                          : Colors.yellow[500],
                                    ),
                                    Text(filteredData[index].rating.toString()),
                                  ],
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'R\$ ',
                                        style: GoogleFonts.urbanist(
                                          color: MyColors.primary,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${filteredData[index].price}',
                                        style: GoogleFonts.urbanist(
                                          color: MyColors.primary,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
