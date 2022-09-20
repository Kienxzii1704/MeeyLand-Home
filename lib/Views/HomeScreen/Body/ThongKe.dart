import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Widgets/ButtonWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewChoThueWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewSangNhuongWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/LisviewWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMoiGioi/ListViewMoiGioi.dart';

class ThongKe extends StatefulWidget {
  const ThongKe({Key? key}) : super(key: key);

  @override
  State<ThongKe> createState() => _ThongKeState();
}

class _ThongKeState extends State<ThongKe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity, height: 8, color: Color(0xffF6F8FB)),
        Padding(
          padding: EdgeInsets.all(17),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: Text(
                  'Thống kê',
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
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Expanded(
                flex: 1,
                child: Text(
                  '134',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '14',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Expanded(
                flex: 1,
                child: Text(
                  'Tin đang đăng',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Tin sắp hết hạn',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 11),
          child: Container(
            height: 1,
            width: 335,
            color: Color(0xffECECEC),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                color: Colors.white,
                title: 'Hôm nay',
                onClick: () {},
                colorBG: Colors.blue,
              ),
              ButtonWidget(
                color: Color(0xff646464),
                title: '1 tuần',
                onClick: () {},
                colorBG: Color(0xffF7F7F7),
              ),
              ButtonWidget(
                color: Color(0xff646464),
                title: '1 tháng',
                onClick: () {},
                colorBG: Color(0xffF7F7F7),
              ),
              ButtonWidget(
                color: Color(0xff646464),
                title: '3 tháng',
                onClick: () {},
                colorBG: Color(0xffF7F7F7),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(26, 20, 0, 0),
          child: Row(
            children: const [
              Expanded(
                flex: 1,
                child: Text(
                  '345',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '23',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '73',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(26, 1, 0, 0),
          child: Row(
            children: const [
              Expanded(
                flex: 1,
                child: Text(
                  'Lượt xem',
                  style:
                  TextStyle(fontSize: 13, color: Color(0xff717171)),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Click gọi',
                  style:
                  TextStyle(fontSize: 13, color: Color(0xff717171)),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Click chat',
                  style:
                  TextStyle(fontSize: 13, color: Color(0xff717171)),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Lượt đặt lịch',
                  style:
                  TextStyle(fontSize: 13, color: Color(0xff717171)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
