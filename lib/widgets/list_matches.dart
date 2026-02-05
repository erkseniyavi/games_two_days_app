import 'package:flutter/material.dart';
import 'package:games_two_days/models/games_two_days_model.dart';

class ListMatches extends StatelessWidget {
  final AsyncSnapshot<GamesTwoDays> snapshot;
  const ListMatches({required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text(
                  "${snapshot.data?.data?[index].homeTeam?.country?.name} | ${snapshot.data?.data?[index].homeTeam?.name} - ${snapshot.data?.data?[index].awayTeam?.name}\n",
                ),
                subtitle: Text(
                  "${snapshot.data?.data?[index].date}, ${snapshot.data?.data?[index].season?.league?.name}",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          );
        },
        itemCount: snapshot.data?.data?.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
