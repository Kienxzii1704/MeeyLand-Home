import 'package:flutter/material.dart';
import 'package:meeyland_home/Models/ItemDuAnModel.dart';
import 'package:meeyland_home/Widgets/WidgetDuAn/ItemDuAnWidget.dart';
class ListViewDuAnWidget extends StatefulWidget {
  const ListViewDuAnWidget({Key? key}) : super(key: key);

  @override
  State<ListViewDuAnWidget> createState() => _ListViewDuAnWidgetState();
}

class _ListViewDuAnWidgetState extends State<ListViewDuAnWidget> {
  List<ItemDuAnModel> duAnCard = [
    ItemDuAnModel('assets/images/vinz.png','assets/images/vinz.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: duAnCard.length,
      itemBuilder: (context, index) {
        final item = duAnCard[index];
        return ItemDuAnWidget(
          itemDuAnModel: item,
        );
      },
    );
  }
}
