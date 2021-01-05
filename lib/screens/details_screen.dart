import 'package:e_commerce_mobile_app/models/shoe_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final ShoeModel shoeModel;

  const DetailsScreen(this.shoeModel);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.shoeModel.color,
    );
  }
}
