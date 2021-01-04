import 'package:e_commerce_mobile_app/core/const.dart';
import 'package:e_commerce_mobile_app/core/flutter%20icons.dart';
import 'package:e_commerce_mobile_app/models/shoe_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ShoeModel> shoeList = ShoeModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(FlutterIcons.stars, color: Colors.black),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories'),
                IconButton(
                  icon: Icon(FlutterIcons.add),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 300,
            color: AppColors.blueColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "JUST FOR YOU",
                  style: TextStyle(color: Colors.black54),
                ),
                Text("VIEW ALL",
                    style:
                        TextStyle(color: AppColors.greenColor, fontSize: 12)),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          ...shoeList.map((data) {
            return Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ]),
              child: Row(
                children: [
                  Image(
                    height: 60,
                    width: 100,
                    image: AssetImage("assets/${data.imgPath}"),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .4,
                          child: Text(
                            "${data.name}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "${data.brand}",
                          style: TextStyle(height: 1.5, color: Colors.black26),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Text(
                      "${data.price.toInt()}",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: AppColors.greenColor,
            unselectedItemColor: Colors.black26,
            currentIndex: 2,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FlutterIcons.compass),
                ),
                // ignore: deprecated_member_use
                title: Text(
                  "data",
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FlutterIcons.ok),
                // ignore: deprecated_member_use
                title: Text(
                  "data",
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FlutterIcons.person),
                // ignore: deprecated_member_use
                title: Text(
                  "data",
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FlutterIcons.chevron_left),
                // ignore: deprecated_member_use
                title: Text(
                  "data",
                ),
              ),
            ]),
      ),
    );
  }
}
