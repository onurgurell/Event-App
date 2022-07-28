// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailSliverAppBar extends StatelessWidget {
  String comeImage;
  //String comeTitle;
  DetailSliverAppBar(this.comeImage, /*this.comeTitle*/ {Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * .3,
      pinned: true,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .4,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(comeImage),
            ),
          ),
        ),
      ),
    );
  }
}
