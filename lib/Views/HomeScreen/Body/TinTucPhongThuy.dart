import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/DuAn.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/MoiGioi.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/MuaBanChoThueSangNhuong.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/ThongKe.dart';
import 'package:meeyland_home/Widgets/ButtonWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewChoThueWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewSangNhuongWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/LisviewWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMoiGioi/ListViewMoiGioi.dart';

class TinTucPhongThuy extends StatefulWidget {
  const TinTucPhongThuy({Key? key}) : super(key: key);

  @override
  State<TinTucPhongThuy> createState() => _TinTucPhongThuyState();
}

class _TinTucPhongThuyState extends State<TinTucPhongThuy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
                        'Tin Tức',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
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
                      Text(
                        'Phong Thủy',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        ImageSlideshow(
          width: double.infinity,
          height: 168,
          initialPage: 0,
          onPageChanged: (value) {
            print('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: <Widget>[
            Image.asset('assets/images/Tintuc.jpg'),
            Image.asset('assets/images/Tintuc.jpg'),
            Image.asset('assets/images/Tintuc.jpg'),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 12, 30, 0),
          child: Column(
            children: const [
              Text(
                'Giá chung cư Hà Nội sẽ tiếp tục tăng trở lại trong năm 2021',
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                'Forms have existed for a significant amount of time, greatly simplifying the task of drafting ...',
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 343,
          height: 1,
          color: Color(0xffECECEC),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 12, 30, 0),
          child: Column(
            children: [
              const Text(
                'Top 5 kinh nghiệm đầu tư bất động sản siêu hay không nên bỏ lỡ',
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      'Tin tức | Tài chính',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff646464)),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            '2 giờ trước',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff9A9A9A)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 12, 30, 0),
          child: Column(
            children: [
              const Text(
                'Top 5 kinh nghiệm đầu tư bất động sản siêu hay không nên bỏ lỡ',
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      'Tin tức | Tài chính',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff646464)),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            '2 giờ trước',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff9A9A9A)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 12, 30, 0),
          child: Column(
            children: [
              const Text(
                'Top 5 kinh nghiệm đầu tư bất động sản siêu hay không nên bỏ lỡ',
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      'Tin tức | Tài chính',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff646464)),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            '2 giờ trước',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff9A9A9A)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
