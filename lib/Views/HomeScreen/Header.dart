import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('assets/images/LogoMeeyLand.svg'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: OutlinedButton.icon(
                label: const Text('Đăng tin'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1, color: Color(0xff366FEB)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            SvgPicture.asset('assets/images/notifications.svg'),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: 335,
                height: 38,
                child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 6),
                      hintText: 'Nhập địa chỉ, dự án hoặc từ khoá',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/images/search.svg'),
                      ),
                      filled: true,
                      fillColor: Color(0xffF2F3F5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                    )),
              ),
            ),
            Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    color: Color(0xffE4F1FF),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset(
                    'assets/images/map2.svg',
                  ),
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/Icon-Mua Bán.svg',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      'Mua Bán',
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/images/Icon-Cho thuê.svg'),
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      'Cho Thuê',
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/images/Icon-Dự án.svg'),
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      'Sang nhượng',
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/images/Icon-Sang nhượng.svg'),
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      'Dự án',
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
