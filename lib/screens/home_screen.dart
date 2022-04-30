import 'package:elibrary/constant.dart';
import 'package:elibrary/models/ilmu.dart';
import 'package:flutter/material.dart';
import '../components/home/header.dart';
import '../components/home/home_appbar.dart';
import '../components/home/title.dart';
import '../components/home/novel.dart';
import '../components/home/ilmu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor100,
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: 25),
            SectionTitle(title: "Pilihan Novel Terbaik"),
            TrendingList(),
            SizedBox(height: spacer),
            SizedBox(height: 15),
            SectionTitle(title: "Mari Menambah Ilmu Baru"),
            Buku(),
            SizedBox(height: spacer),
          ],
        ),
      ),
    );
  }
}
