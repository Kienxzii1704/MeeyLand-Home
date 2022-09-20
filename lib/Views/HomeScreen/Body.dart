import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/DuAn.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/MoiGioi.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/MuaBanChoThueSangNhuong.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/ThongKe.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/TinTucPhongThuy.dart';
import 'package:meeyland_home/Widgets/ButtonWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewChoThueWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewSangNhuongWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/LisviewWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMoiGioi/ListViewMoiGioi.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ThongKe(),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
              width: double.infinity,
              height: 8,
              color: Color(0xffF6F8FB)),
        ),
        const MBCTSN(),
        Container(
          height: 8,
          color: Color(0xffF6F8FB),
        ),
        const DuAn(),
        Container(
          height: 8,
          color: Color(0xffF6F8FB),
        ),
        const MoiGioi(),
        const TinTucPhongThuy(),
      ],
    );
  }
}
