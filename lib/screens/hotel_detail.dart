import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});
  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args['index'];
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 300.0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppStyles.primaryColor),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(children: [
              Positioned.fill(
                  child: Image.asset(
                "assets/images/${hotelList[index]['image']}",
                fit: BoxFit.cover,
              )),
              Positioned(
                bottom: 20,
                right: 20,
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    color: Colors.black.withOpacity(0.5),
                    child: Text(
                      hotelList[index]['name'],
                      style:  TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: AppStyles.primaryColor,
                            offset: Offset(2.0,2.0)
                          )
                        ],
                        color: Colors.white, fontSize: 24),
                    )),
              )
            ]),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                "In this article we will creaea scrollable app ba with a background image in Flutter. The app bar willl shrink as the user scrollls up , and it will include ahis is as distinct from those widgets that are backed by [RenderBox] subclasses, which use [BoxConstraints] and [Size] respectively, and are known as box widgets. (Widgets like [Container], [Row], and [SizedBox] are box widgets While boxes are much more straightforward implementing a simple two-dimensional Cartesian layout system, slivers are much more powerful, and are optimized for one-axis scrolling environments.Slivers are hosted in viewports, also known as scroll views, most notably [CustomScrollView]. back button Bellow Image , we will dispaly  some descriptive txt with more or less button. "),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "More Images",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 13,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(16.0),
                    child:
                        Image.network("https://via.placeholder.com/200x200"));
              },
            ),
          )
        ]))
      ],
    ));
  }
}
