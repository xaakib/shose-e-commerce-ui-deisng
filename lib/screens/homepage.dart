import 'package:e_commerce_mobile_app/core/flutter%20icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          FlutterIcons.menu,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Categories'),
                IconButton(
                  icon: Icon(
                    FlutterIcons.search,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Text("Dsiplay horizopntal slider"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  "JUST FOR YOU",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Text("VIEW ALL",
                    style: TextStyle(
                      color: Colors.black,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
