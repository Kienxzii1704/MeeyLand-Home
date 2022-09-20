import 'package:flutter/material.dart';
import 'package:meeyland_home/Models/ItemBDSModel.dart';
import 'package:meeyland_home/Models/ItemMoiGioiModel.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ItemBDSWidget.dart';
import 'package:meeyland_home/Widgets/WidgetMoiGioi/ItemMoiGioiWidget.dart';

class ListViewMoiGioiWidget extends StatefulWidget {
  const ListViewMoiGioiWidget({Key? key}) : super(key: key);

  @override
  State<ListViewMoiGioiWidget> createState() => _ListViewMoiGioiWidgetState();
}

class _ListViewMoiGioiWidgetState extends State<ListViewMoiGioiWidget> {
  List<ItemMoiGioiModel> moiGioiCard = [
    ItemMoiGioiModel('assets/images/duyen.jpg', 'Nguyễn Kỳ Duyên','4,8','(1000) Đánh giá'),
    ItemMoiGioiModel('assets/images/duyen.jpg', 'Nguyễn Kỳ Duyên','4,8','(1000) Đánh giá'),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: moiGioiCard.length,
      itemBuilder: (context, index) {
        final item = moiGioiCard[index];
        return ItemMoiGioiWidget(
          itemMoiGioiModel: item,
        );
      },
    );
  }
}
