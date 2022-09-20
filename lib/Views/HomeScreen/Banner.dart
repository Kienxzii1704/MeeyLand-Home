import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class Banner1 extends StatefulWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  State<Banner1> createState() => _Banner1State();
}

class _Banner1State extends State<Banner1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ImageSlideshow(
              width: double.infinity,
              height: 108,
              initialPage: 0,
              onPageChanged: (value) {
                print('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.asset('assets/images/image 1.jpg'),
                Image.asset('assets/images/image 1.jpg'),
                Image.asset('assets/images/image 1.jpg'),
                Image.asset('assets/images/image 1.jpg'),
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: double.infinity,
            height: 64,
            decoration: BoxDecoration(
                color: Color(0xffF1F8FF),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Icon(Icons.calendar_month),
                ),
                Expanded(
                    flex: 5,
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Có ',
                              style: TextStyle(fontSize: 16)),
                          TextSpan(
                              text: '5 lượt đặt lịch',
                              style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue)),
                          TextSpan(
                              text: ' chờ xác nhận, ',
                              style: TextStyle(fontSize: 16)),
                          TextSpan(
                              text: '3 lịch hẹn',
                              style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue)),
                          TextSpan(
                              text: ' sắp diễn ra.',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
