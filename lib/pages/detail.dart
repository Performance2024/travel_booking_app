import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  void Function()? bookNow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Color.fromARGB(255, 250, 239, 238),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: (MediaQuery.of(context).size.height * 3) / 5,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'img/img_1.jpg',
                          ),
                          fit: BoxFit.cover),
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      )),
                  child: SafeArea(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      alignment: Alignment.topCenter,
                      decoration: const BoxDecoration(color: Colors.black26),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: ()=> Navigator.pushNamed(context, 'home'),
                            child: Icon(
                              Icons.chevron_left,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Golden Beach',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'AlegreyaSans',
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0),
                          ),
                          Text(' '),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  left: 12.0,
                  right: 12.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
                    height: 95.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 00.0, 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Golden Beach; Thailand',
                                  style: TextStyle(
                                      fontFamily: 'AlegreyaSans',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.people,
                                          size: 15.0,
                                        ),
                                        Text(
                                          ' 3 People',
                                          style: TextStyle(
                                              fontFamily: 'AlegreyaSans',
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today,
                                          size: 15.0,
                                        ),
                                        Text(
                                          ' 04 Days',
                                          style: TextStyle(
                                              fontFamily: 'AlegreyaSans',
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.wifi,
                                          size: 15.0,
                                        ),
                                        Text(
                                          ' Free Wifi',
                                          style: TextStyle(
                                              fontFamily: 'AlegreyaSans',
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Icon(Icons.check_circle)
                        ]),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                height: (MediaQuery.of(context).size.height * 2) / 5,
                decoration: const BoxDecoration(color: Colors.transparent),
                padding: EdgeInsets.fromLTRB(12.0, 50.0, 12.0, 0.0),
                child: DefaultTabController(
                  length: 3,
                  child: Column(children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerHeight: 0.0,
                          labelColor: Colors.black,
                          indicator: BoxDecoration(
                            color: Color.fromARGB(255, 236, 224, 223),
                          ),
                          tabs: [
                            Tab(text: 'Description'),
                            Tab(text: 'Gallery'),
                            Tab(text: 'Reviews'),
                          ]),
                    ),
                    const Expanded(
                      child: TabBarView(children: [
                        SingleChildScrollView(
                          child: Text(
                              'Desciption Desciption Desciption Desciption Desciption Desciption Desciption Desciption Desciption Desciption Desciption Desciption DesciptionDesciption Desciption Desciption Desciption Desciption Desciption Desciption Desciption Desciption Desci ptionDescipt ionDesci ptionv Desciption Desciption Desciption Desciption Desciption DesciptionDesciption DesciptionD esciption Desciption DesciptionDesciption'),
                        ),
                        Text('Galery'),
                        Text('Reviews'),
                      ]),
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 75.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 236, 224, 223),
                blurRadius: 50.0,
                spreadRadius: 1.0,
                blurStyle: BlurStyle.solid),
          ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total cost',
                    style: TextStyle(
                        fontFamily: 'AlegreyaSans',
                        fontSize: 15.0,
                        height: 0.5,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '\$500',
                    style: TextStyle(
                        fontFamily: 'AlegreyaSans',
                        fontSize: 25.0,
                        height: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => "",
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF3953D),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 25.0)),
                child: const Text(
                  'Book now',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontFamily: 'AlegreyaSans',
                  ),
                ),
              )
            ],
          )),
    );
  }
}
