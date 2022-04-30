import 'package:elibrary/components/home/recent.dart';
import 'package:elibrary/components/home/search.dart';
import 'package:elibrary/components/home/title.dart';
import 'package:elibrary/constant.dart';
import 'package:elibrary/models/recent.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 406 - 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchField(),
          SectionTitle(title: "Lanjutkan Membaca"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: recents.map((recent) {
                int index = recents.indexOf(recent);
                return CardRecent(recent, index: index);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
