import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Views/HomeScreen/Body/ThongKe.dart';
import 'package:meeyland_home/Widgets/ButtonWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewChoThueWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ListViewSangNhuongWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/LisviewWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMoiGioi/ListViewMoiGioi.dart';


class MBCTSN extends StatefulWidget {
  const MBCTSN({Key? key}) : super(key: key);

  @override
  State<MBCTSN> createState() => _MBCTSNState();
}

class _MBCTSNState extends State<MBCTSN> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(17),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    'Mua bán',
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
            width: double.infinity,
            height: 420,
            child: const ListViewWidget(),
          ),
          Padding(
            padding: EdgeInsets.all(17),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    'Cho thuê',
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
            width: double.infinity,
            height: 420,
            child: const ListViewChoThueWidget(),
          ),
          Padding(
            padding: EdgeInsets.all(17),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    'Sang nhượng',
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
            width: double.infinity,
            height: 420,
            child: const ListViewSangNhuongWidget(),
          ),
        ],
      ),
    );
  }
}
