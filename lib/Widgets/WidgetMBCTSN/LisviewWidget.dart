import 'package:flutter/material.dart';
import 'package:meeyland_home/Models/ItemBDSModel.dart';
import 'package:meeyland_home/Widgets/WidgetMBCTSN/ItemBDSWidget.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<ItemBDSModel> bdsCard = [
    ItemBDSModel(
        'assets/images/BDS1.png',
        'Sang nhượng căn chung cư ở đường Thợ Nhuộm, Hoàn Kiếm....',
        '60m2',
        'Ngõ 3 ô tô tránh',
        '',
        'Sàn giao dịch',
        '',
        'Nhà mặt tiền',
        '198 Trúc bạch, Q.Ba Đình, Hà Nội','20 phút trước'),
    ItemBDSModel(
        'assets/images/BDS2.png',
        'Sang nhượng căn chung cư ở đường Thợ Nhuộm, Hoàn Kiếm....',
        '60m2',
        'Ngõ 3 ô tô tránh',
        'Đ, TB',
        'Sàn giao dịch',
        '3m mặt tiền',
        'Nhà mặt tiền',
        '198 Trúc bạch, Q.Ba Đình, Hà Nội','20 phút trước'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: bdsCard.length,
      itemBuilder: (context, index) {
        final item = bdsCard[index];
        return ItemBDSWidget(
          itemBDSModel: item,
        );
      },
    );
  }
}
