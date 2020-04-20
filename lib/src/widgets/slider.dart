import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PrefetchImageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrefetchImageDemoState();
  }
}

class _PrefetchImageDemoState extends State<PrefetchImageDemo> {
  final List<String> images = [
    'https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg',
    'https://images.unsplash.com/photo-1447175008436-054170c2e979?ixlib=rb-1.2.1&auto=format&fit=crop&w=1161&q=80',
    'https://images.unsplash.com/photo-1551135020-39e4ca508d9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Swiper(
        itemBuilder: (BuildContext context,int index){
          return Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(images[index]),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(6.0),
            ));
        },
        itemCount: 6,
        pagination: new SwiperPagination(
        ),
        autoplay: true,
        autoplayDelay: 5000,
        itemWidth: 50.0,
        itemHeight: 50.0,


//        control: new SwiperControl(),
      ),
    );
  }
}