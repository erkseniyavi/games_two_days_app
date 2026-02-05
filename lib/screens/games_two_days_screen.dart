import 'package:flutter/material.dart';
import 'package:games_two_days/api/games_api.dart';
import 'package:games_two_days/models/games_two_days_model.dart';
import 'package:games_two_days/screens/search_screen.dart';
import 'package:games_two_days/widgets/list_matches.dart';

class GamesTwoDaysScreen extends StatefulWidget {
  const GamesTwoDaysScreen({super.key});

  @override
  State<GamesTwoDaysScreen> createState() => _GamesTwoDaysScreenState();
}

class _GamesTwoDaysScreenState extends State<GamesTwoDaysScreen> {
  late Future<GamesTwoDays> gamesObject;

  @override
  void initState() {
    super.initState();
    gamesObject = GamesTwoDaysApi().fetchGamesTwoDays();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Football Stats", style: TextStyle(fontSize: 27)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              var tappedName = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Row(
              children: [
                Icon(Icons.arrow_outward, size: 15),
                SizedBox(width: 7),
                Text(
                  "Popular Upcoming Matches",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: FutureBuilder<GamesTwoDays>(
              future: gamesObject,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(children: [ListMatches(snapshot: snapshot)]);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
