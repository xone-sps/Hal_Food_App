import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hal_food_app/src/constant/color.dart';

class Slider extends StatefulWidget {
//  _SliderState createState() => _SliderState();
  State<StatefulWidget> createState() {
    return _SliderState();
  }
}


class _SliderState extends State<Slider> {
  PageController pageController;
  int photoIndex = 0;
  List<String> photos = [
    'https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg',
    'https://images.unsplash.com/photo-1447175008436-054170c2e979?ixlib=rb-1.2.1&auto=format&fit=crop&w=1161&q=80',
    'https://images.unsplash.com/photo-1551135020-39e4ca508d9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      photos.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//      )
//    );
  return Scaffold(
    body: new ConstrainedBox(
        child: new Swiper(
          outer:false,
          itemBuilder: (c, i) {
            return new Wrap(
              runSpacing:  6.0,
              children: [0,1,2,3,4,5,6,7,8,9].map((i){
                return new SizedBox(
                  width: MediaQuery.of(context).size.width/5,
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new SizedBox(
                        child:  new Container(
                          child: new Image.network("https://fuss10.elemecdn.com/c/db/d20d49e5029281b9b73db1c5ec6f9jpeg.jpeg%3FimageMogr/format/webp/thumbnail/!90x90r/gravity/Center/crop/90x90"),
                        ),
                        height: MediaQuery.of(context).size.width * 0.12,
                        width: MediaQuery.of(context).size.width * 0.12,
                      ),
                      new Padding(padding: new EdgeInsets.only(top:6.0),child: new Text("$i"),)
                    ],
                  ),
                );
              }).toList(),
            );
          },
          pagination: new SwiperPagination(
              margin: new EdgeInsets.all(5.0)
          ),
          itemCount: 10,
        ),
//        constraints:new BoxConstraints.loose(new Size(sceenWidth, 170.0))
    ),
  );

  }

}




//
//class Banner extends StatefulWidget {
//  _BannerState createState() => _BannerState();
//}
//
//class _BannerState extends State<Banner> {
//  PageController pageController;
//  List<String> images = [
//    'https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg',
//    'https://images.unsplash.com/photo-1447175008436-054170c2e979?ixlib=rb-1.2.1&auto=format&fit=crop&w=1161&q=80',
//    'https://images.unsplash.com/photo-1551135020-39e4ca508d9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
//  ];
//  @override
//  void initState(){
//    super.initState();
//    pageController = PageController(initialPage: 1,viewportFraction: 0.0);
//
//  }
//
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      body:Container(
//       child: Text('helo'),
//      )
//    );
//  }
//  imageSlider(int index){
//    return AnimatedBuilder(
//      animation: pageController,
//      builder: (context,widget){
//        return Center(
//          child: SizedBox(
//            height: 200,
//            width: 300,
//            child: widget,
//          ),
//        );
//      },
//      child: Container(
//        child: Image.network(images[index],fit: BoxFit.cover,),
//      ),
//    );
//  }
//}