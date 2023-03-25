import 'package:flutter/material.dart';
import 'tourism_data.dart';

class TourismPlaceList extends StatelessWidget {
  const TourismPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tourismPlaceList.length,
      itemBuilder: (BuildContext context, int index) {
        return TourismPlaceCard(tourismPlace: tourismPlaceList[index]);
      },
    );
  }
}

class TourismPlaceCard extends StatelessWidget {
  final TourismPlace tourismPlace;

  const TourismPlaceCard({Key? key, required this.tourismPlace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Card(
            child: Image.network(
              tourismPlace.imageUrls[0],
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tourismPlace.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 8.0),
                Text(
                  tourismPlace.location,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 16.0),
                Text(tourismPlace.description),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(width: 8.0),
                        Text(tourismPlace.openDays),
                        SizedBox(width: 8.0),
                        Text(tourismPlace.openTime),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.attach_money),
                        SizedBox(width: 8.0),
                        Text(tourismPlace.ticketPrice),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
