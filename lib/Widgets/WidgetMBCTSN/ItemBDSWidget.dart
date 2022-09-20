import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Models/ItemBDSModel.dart';

class ItemBDSWidget extends StatefulWidget {
  final ItemBDSModel? itemBDSModel;
  ItemBDSWidget({this.itemBDSModel});

  @override
  State<ItemBDSWidget> createState() => _ItemBDSWidgetState();
}

class _ItemBDSWidgetState extends State<ItemBDSWidget> {
  late ItemBDSModel? itemBDSModel;
  @override
  void initState() {
    super.initState();
    itemBDSModel = widget.itemBDSModel;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 288,
        height: 404,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset((widget.itemBDSModel?.urlImage)!),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black12,
                    ),
                    padding: EdgeInsets.all(4),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/online.png'),
                        const SizedBox(
                          width: 2.95,
                        ),
                        const Text(
                          'online',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 13,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffde4300),
                    ),
                    padding: const EdgeInsets.all(4),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        'Gấp',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 9,
                  right: 8,
                  child: SvgPicture.asset('assets/images/favorite.svg'),
                ),
                Positioned(
                  top: 44,
                  right: 9,
                  child: SvgPicture.asset('assets/images/iconImage.svg'),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Text(
              (widget.itemBDSModel?.title)!,
              style: const TextStyle(color: Color(0xff343434), fontSize: 15),
            ),
            const SizedBox(height: 4,),
            Row(
              children: [
                SvgPicture.asset('assets/images/dolar.svg'),
                const SizedBox(width: 8.25,),
                const Text(
                  '1.45 tỷ  |  30 triệu/m2',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            const SizedBox(height: 11,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/arceaIcon.svg'),
                      const SizedBox(width: 9.25,),
                      Text((widget.itemBDSModel?.dienTich)!)
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Image.asset('assets/images/Union.png'),
                      const SizedBox(width: 9.25,),
                      Text((widget.itemBDSModel?.thongTinNha)!)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/House.svg'),
                      const SizedBox(width: 9.25,),
                      Text((widget.itemBDSModel?.viewNha)!)
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Laban.svg'),
                      const SizedBox(width: 9.25,),
                      Text((widget.itemBDSModel?.huong)!)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Home.svg'),
                      const SizedBox(width: 9.25,),
                      Text((widget.itemBDSModel?.dienTichMatTien)!)
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/2xperson.svg'),
                      const SizedBox(width: 9.25,),
                      Text((widget.itemBDSModel?.sanGD)!)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 9,),
            Row(
              children: [
                SvgPicture.asset('assets/images/location.svg'),
                const SizedBox(width: 9.25,),
                Text((widget.itemBDSModel?.location)!)
              ],
            ),
            SizedBox(height: 8,),
            Text('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',style: TextStyle(color: Color(0xffDADADA)),),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    (widget.itemBDSModel?.timeUp)!,
                    style:
                    const TextStyle(fontSize: 11,color: Color(0xff646464)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Xem bản đồ',
                        style:
                        TextStyle(fontSize: 11, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
