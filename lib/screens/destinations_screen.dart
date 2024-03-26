import 'package:explore_mundo_app/utils/data.dart';
import 'package:flutter/material.dart';

class DestinationsScreen extends StatelessWidget {
  const DestinationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataPlaces.length,
      itemBuilder: (context, index) {
        return ListTile(
          
          title: Text(dataPlaces[index].title),
          subtitle: Text(dataPlaces[index].from),

          // subtitle: Text(dataPlaces[index].description),
          leading: Image.network(dataPlaces[index].image),
          // trailing: Icon(Icons.star, color:dataPlaces[index].stars >= 50 ? Colors.yellow : Colors.grey),
        );
      },
    );
  }
 }
