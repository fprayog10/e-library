import 'package:elibrary/components/detail/detail_appbar.dart';
import 'package:elibrary/components/detail/header_detail.dart';
import 'package:elibrary/components/detail/ilmu_detail.dart';
import 'package:elibrary/components/detail/section_detail.dart';
import 'package:elibrary/constant.dart';
import 'package:elibrary/models/ilmu.dart';
import 'package:elibrary/models/trend.dart';
import 'package:flutter/material.dart';

class IlmuScreen extends StatefulWidget {
  const IlmuScreen({
    Key? key,
    required this.ilmu,
  }) : super(key: key);

  final Ilmu ilmu;

  @override
  _IlmuScreenState createState() => _IlmuScreenState();
}

class _IlmuScreenState extends State<IlmuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor100,
      appBar: DetailAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.ilmu.image,
                  width: 175,
                  height: 267,
                ),
              ),
            ),
            SizedBox(height: 25),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(spacer),
                  constraints: BoxConstraints(
                    minHeight: 370 * 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IlmuDetail(ilmu: widget.ilmu),
                      SizedBox(height: spacer),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: double.infinity,
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: greenColor,
                        elevation: 0,
                        child: Text(
                          "Read Now",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: whiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
