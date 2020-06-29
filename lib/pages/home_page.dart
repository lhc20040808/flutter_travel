import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imgUrls = [
    'http://pages.ctrip.com/commerce/promote/20180718/yxzy/img/640sygd.jpg',
    'http://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'http://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        removeTop: true,//移除顶部Status bar的Padding
        context: context,
        child: ListView(
          children: <Widget>[
            Container(
              height: 160,
              child: Swiper(
                itemCount: _imgUrls.length,
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    _imgUrls[index],
                    fit: BoxFit.fill,
                  );
                },
                pagination: SwiperPagination(),
              ),
            ),
            Container(
              height: 800,
              child: ListTile(
                title: Text('占位'),
              ),
            ),
          ],
        ));
  }
}
