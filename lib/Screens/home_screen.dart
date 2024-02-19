// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:brand_kiln_app/shared/categories_list.dart';
import 'package:brand_kiln_app/constant/gradient_text.dart';
import 'package:brand_kiln_app/constant/text_colors.dart';
import 'package:brand_kiln_app/shared/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 71,
        actions: [
          Row(
            children: [
              const Text(
                "brand",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cloudsters',
                    fontSize: 30),
              ),
              const GradientText(
                "kiln",
                style: TextStyle(fontSize: 30, fontFamily: 'Cloudsters'),
                gradient: LinearGradient(colors: [
                  colorA,
                  colorB,
                ]),
              ),
              SizedBox(width: widthScreen * 0.1),
              const Icon(
                Icons.location_pin,
                color: Colors.white,
                size: 30,
              ),
              IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                },
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(125, 78, 91, 110),
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/img/profile_img.jpg'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/background.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 500),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  const SizedBox(
                    height: 1.5,
                  ),
                  Image.asset(
                    "assets/img/top_image.jpg",
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FIND YOUR",
                        style: TextStyle(
                            fontFamily: 'Armstrong',
                            color: colorC,
                            fontSize: 19.9),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "PERFECT CAR",
                        style: TextStyle(
                            fontFamily: 'Armstrong',
                            color: Color.fromRGBO(171, 55, 58, 1),
                            fontSize: 19.9),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CategoriesWidget(title: 'SEARCH'),
                      CategoriesWidget(title: 'ASSIST ME'),
                      CategoriesWidget(title: 'CONSULT US'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFiledBar(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Eg: ',
                          style: TextStyle(
                              color: colorC, fontFamily: 'Montserrat'),
                          /*defining default style is optional */
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Tata Nexon ',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', color: colorD)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 140,
                    child: Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              ListViewCards(
                                  number:
                                      categoriesList[index].categorieNumber),
                              Brecks()
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CarsList(),
                        CarsList(),
                        CarsList(),
                        CarsList(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    child: Stack(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "FUEL",
                              style: TextStyle(
                                  fontFamily: 'Armstrong',
                                  color: colorC,
                                  fontSize: 19.9),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "PRICE",
                              style: TextStyle(
                                  fontFamily: 'Armstrong',
                                  color: Color.fromRGBO(171, 55, 58, 1),
                                  fontSize: 19.9),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 40,
                          child: Image.asset(
                            'assets/img/logo.png',
                            height: 100,
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 23,
                          child: Container(
                            height: 70,
                            width: 60,
                            color: colorC,
                            child: Column(
                              children: const [
                                Text(
                                  'INR',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  '100.5',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            right: 30,
                            top: 65,
                            child: Image.asset(
                              'assets/img/whatsapp.png',
                              height: 50,
                            )),
                        Positioned(
                          left: 20,
                          bottom: 50,
                          child: GestureDetector(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Choose City",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: colorC),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: Image.asset(
                                      'assets/img/arrow.png',
                                      height: 10,
                                      color: colorD,
                                    ),
                                  ),
                                ],
                              ),
                              height: 30,
                              width: 145,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: colorC,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          bottom: 10,
                          child: GestureDetector(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Fuel Type",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: colorC),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: Image.asset(
                                      'assets/img/arrow.png',
                                      height: 10,
                                      color: colorD,
                                    ),
                                  )
                                ],
                              ),
                              height: 30,
                              width: 145,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: colorC,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // --------------------------------------------------------------------
                  FeaturedCars(),
                  SizedBox(
                    height: 465,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CarsList(),
                        CarsList(),
                        CarsList(),
                        CarsList(),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/img/car.jpg",
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      heightFactor: 3,
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'BROWSE BY ',
                          style: TextStyle(
                              color: colorC,
                              fontFamily: 'Armstrong',
                              fontSize: 20),
                          /*defining default style is optional */
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'BRANDS',
                                style: TextStyle(
                                    fontFamily: 'Armstrong', color: colorD)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CarsCompanies(),
                  LoadMoreWidget(),
                  YoutubeVideoslistviewWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        text: ' CAR  ',
                        style: TextStyle(
                            color: colorC,
                            fontFamily: 'Armstrong',
                            fontSize: 20),
                        /*defining default style is optional */
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'COMPARISON',
                              style: TextStyle(
                                  fontFamily: 'Armstrong', color: colorD)),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  CarCoparisonListViewWidget(),

                  SizedBox(
                    height: 10,
                  ),

                  CarVideoWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        text: ' TOP PICKS FOR ',
                        style: TextStyle(
                            color: colorC,
                            fontFamily: 'Armstrong',
                            fontSize: 20),
                        /*defining default style is optional */
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'YOU',
                              style: TextStyle(
                                  fontFamily: 'Armstrong', color: colorD)),
                        ],
                      ),
                    ),
                  ),

                  TopPicksForYouListView(),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        text: ' NEWS ',
                        style: TextStyle(
                            color: colorC,
                            fontFamily: 'Armstrong',
                            fontSize: 20),
                        /*defining default style is optional */
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'UPDATE',
                              style: TextStyle(
                                  fontFamily: 'Armstrong', color: colorD)),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  NewsUpdateListView(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 170,
                    width: double.infinity,
                    color: Colors.black,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "brand",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Cloudsters',
                                      fontSize: 20),
                                ),
                                GradientText(
                                  "kiln",
                                  style: TextStyle(
                                      fontSize: 20, fontFamily: 'Cloudsters'),
                                  gradient: LinearGradient(colors: [
                                    colorA,
                                    colorB,
                                  ]),
                                ),
                              ],
                            ),
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(52, 52, 52, 0.5),
                                  border: Border.all(color: colorC),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  'assets/img/Email.png',
                                  color: colorC,
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(52, 52, 52, 0.5),
                                  border: Border.all(color: colorC),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  'assets/img/Facebook.png',
                                  color: colorC,
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(52, 52, 52, 0.5),
                                  border: Border.all(color: colorC),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  'assets/img/Twitter.png',
                                  color: colorC,
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(52, 52, 52, 0.5),
                                  border: Border.all(color: colorC),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  'assets/img/youtube_logo.png',
                                  color: colorC,
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(52, 52, 52, 0.5),
                                  border: Border.all(color: colorC),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  'assets/img/Instagram Logo.png',
                                  color: colorC,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/img/Copyright Symbol.png',
                              height: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '2023',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 3,
                          color: Color.fromRGBO(99, 99, 99, 1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Powered by',
                              style: TextStyle(
                                  fontFamily: 'Montserrat2',
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "brand",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Cloudsters',
                                  fontSize: 15),
                            ),
                            GradientText(
                              "kiln",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Cloudsters'),
                              gradient: LinearGradient(colors: [
                                colorA,
                                colorB,
                              ]),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
