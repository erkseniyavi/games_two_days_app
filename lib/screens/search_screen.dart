import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? leagueName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    cursorColor: Colors.black54,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter league',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: const Color.fromARGB(255, 126, 131, 172),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide.none,
                      ),
                      icon: Icon(Icons.search, size: 50),
                    ),
                    onChanged: (value) {
                      leagueName = value;
                    },
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, size: 50,),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
