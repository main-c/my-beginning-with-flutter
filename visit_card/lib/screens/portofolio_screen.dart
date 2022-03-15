import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:visit_card/screens/components/drawer_component.dart';

class PortofolioScreen extends StatelessWidget {
  const PortofolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerComponent(),
      body: Carousel(
        allowWrap: false,
        height: 500.0,
        width: 500.0,
        type: Types.slideSwiper,
        children: [
          Image.asset('assets/pic_1.jpg'),
          Image.asset('assets/pic_2.jpg'),
          Image.asset('assets/pic_3.jpg'),
          Image.asset('assets/pic_3.png'),
          Image.asset('assets/pic_4.png'),
          Image.asset('assets/pic_5.png'),
        ],
        axis: Axis.horizontal,
        onCarouselTap: (i) {},
        arrowColor: Colors.black,
        showArrow: true,
        initialPage: 0,
        indicatorType: IndicatorTypes.bar,
      ),
    );
  }
}
