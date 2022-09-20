import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/MuaBanChoThueSangNhuong.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/ThongKe.dart';
import 'package:meeyland_home/Widgets/ButtonWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewChoThueWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewSangNhuongWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/LisviewWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMoiGioi/ListViewMoiGioi.dart';


class DuAn extends StatefulWidget {
  const DuAn({Key? key}) : super(key: key);

  @override
  State<DuAn> createState() => _DuAnState();
}

class _DuAnState extends State<DuAn> {
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
                  'Dự án',
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
                        'Đang mở bán',
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
                      Text('Đang thi công'),
                      SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('Đã hoàn thành'),
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
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 288,
                height: 188,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Image.asset('assets/images/vinz.png'),
                        ),
                        Positioned(
                          top: 9,
                          right: 8,
                          child: SvgPicture.asset(
                              'assets/images/favorite.svg'),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
