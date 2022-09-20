import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Models/ItemDuAnModel.dart';
class ItemDuAnWidget extends StatefulWidget {
  final ItemDuAnModel? itemDuAnModel;
  ItemDuAnWidget({this.itemDuAnModel});
  @override
  State<ItemDuAnWidget> createState() => _ItemDuAnWidgetState();
}

class _ItemDuAnWidgetState extends State<ItemDuAnWidget> {
  late ItemDuAnModel? itemDuAnModel;

  @override
  void initState() {
    super.initState();
    itemDuAnModel = widget.itemDuAnModel;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 288,
      height: 168,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset((widget.itemDuAnModel?.urlImage2)!),
              Positioned(
                top: 9,
                right: 8,
                child: SvgPicture.asset('assets/images/favorite.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
