import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/DuAn.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/MuaBanChoThueSangNhuong.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/ThongKe.dart';
import 'package:meeyland_home/Widgets/ButtonWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewChoThueWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewSangNhuongWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/LisviewWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMoiGioi/ListViewMoiGioi.dart';


class MoiGioi extends StatefulWidget {
  const MoiGioi({Key? key}) : super(key: key);

  @override
  State<MoiGioi> createState() => _MoiGioiState();
}

class _MoiGioiState extends State<MoiGioi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(17),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: Text(
                  'Tìm kiếm môi giới',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Xem tất cả',
                      style: TextStyle(
                          fontSize: 13, color: Color(0xff366FEB)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 400,
          height: 50,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Mua bán',
                        style: TextStyle(color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: 20,
                        height: 3,
                        color: const Color(0xff366FEB),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('Cho thuê'),
                      SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('Sang nhượng'),
                      SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          color: const Color(0xffF6F8FB),
          width: double.infinity,
          height: 288,
          child: const ListViewMoiGioiWidget(),
        ),
      ],
    );
  }
}
