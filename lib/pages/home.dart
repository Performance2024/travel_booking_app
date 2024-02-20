import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> carouselImages = [
    'img/img_1.jpg',
    'img/img_2.jpg',
    'img/img_3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1.0,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 5.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 27.0,
                        )),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'img/profile.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Step outside the ordinary',
                        style: TextStyle(
                            fontFamily: 'AlegreyaSans',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Ideal destination',
                        style: TextStyle(
                            height: 1,
                            fontSize: 40.0,
                            fontFamily: 'AlegreyaSans',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: carouselImages.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    clipBehavior: Clip.antiAlias,
                    width: 200.0,
                    height: 100.0,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: Image.asset(
                      carouselImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Favorite spots',
                        style: TextStyle(
                            fontFamily: 'AlegreyaSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () =>
                                      Navigator.pushNamed(context, 'detail'),
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 20.0, 0.0),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Image.asset(
                                            'img/img_3.jpg',
                                            width: 67.0,
                                            height: 70.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'The Eiffel Tower',
                                              style: TextStyle(
                                                  fontFamily: 'AlegreyaSans',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17.0),
                                            ),
                                            Text('Paris, France'),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
