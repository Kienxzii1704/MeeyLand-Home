import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeyland_home/Models/ItemMoiGioiModel.dart';

class ItemMoiGioiWidget extends StatefulWidget {
  final ItemMoiGioiModel? itemMoiGioiModel;
  ItemMoiGioiWidget({this.itemMoiGioiModel});

  @override
  State<ItemMoiGioiWidget> createState() => _ItemMoiGioiWidgetState();
}

class _ItemMoiGioiWidgetState extends State<ItemMoiGioiWidget> {
  late ItemMoiGioiModel? itemBDSModel;
  @override
  void initState() {
    super.initState();
    itemBDSModel = widget.itemMoiGioiModel;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 0, 20),
      child: Container(
        width: 288,
        height: 215,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1,color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: SizedBox(
                      width: 54,
                      height: 54,
                      child: CircleAvatar(
                        foregroundImage:
                            AssetImage((widget.itemMoiGioiModel?.ulrImage)!),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            (widget.itemMoiGioiModel?.ten)!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/iconStar.svg'),
                            Text(
                              (widget.itemMoiGioiModel?.countStar)!,
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              (widget.itemMoiGioiModel?.countRate)!,
                              style: const TextStyle(
                                  fontSize: 13, color: Color(0xff646464)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/iconVerified.svg'),
                  const SizedBox(
                    width: 8.33,
                  ),
                  const Text(
                    'MG Thổ cư  |  207 tin đăng   ',
                    style: TextStyle(fontSize: 13, color: Color(0xff343434)),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: 264,
                height: 1,
                color: Color(0xffDADADA),
              ),
              const SizedBox(
                height: 13.25,
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/dolar.svg'),
                  const SizedBox(
                    width: 8.25,
                  ),
                  const Text(
                    '1.45 tỷ - 8,5 tỷ',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 15.25,
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/House.svg'),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Nhà mặt phố, chung cư, Biệt thự...',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/location.svg'),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('Tp. Hà Nội: Q. Thanh Xuân, Q. Đống...',style: TextStyle(fontSize: 13),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
