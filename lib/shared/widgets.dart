import 'package:brand_kiln_app/constant/box_decoration.dart';
import 'package:brand_kiln_app/constant/text_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class CategoriesWidget extends StatelessWidget {
  String title;

  CategoriesWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 40,
          width: 114,
          decoration: boxDicoration,
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: colorC,
                ),
              ),
            ),
          )),
    );
  }
}

class TextFiledBar extends StatelessWidget {
  const TextFiledBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: widthScreen * 0.9,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      color: colorC,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
          ),
          focusedBorder: InputBorder.none,
          filled: true, //<-- SEE HERE
          fillColor: Colors.white, //<-- SEE HERE
          suffixIcon: Container(
              color: Colors.black,
              child: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ListViewCards extends StatefulWidget {
  late String number;

  ListViewCards({
    required this.number,
    super.key,
  });

  @override
  State<ListViewCards> createState() => _ListViewCardsState();
}

class _ListViewCardsState extends State<ListViewCards> {
  bool isTaped = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTaped = !isTaped;
        });
      },
      child: Container(
        height: isTaped ? 100 : 130,
        margin: const EdgeInsets.all(12),
        width: isTaped ? 100 : 130,
        decoration: BoxDecoration(
          color: isTaped ? colorC : colorD,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'UNDER',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              widget.number,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text(
              'LAKHS',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class Brecks extends StatelessWidget {
  const Brecks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(12),
      width: 2,
      decoration: BoxDecoration(
        color: colorC,
        border: Border.all(width: 3, color: colorC),
      ),
    );
  }
}

class CarsList extends StatelessWidget {
  const CarsList({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          height: 440,
          width: widthScreen * 0.7,
          decoration: boxDicoration,
          padding: const EdgeInsets.all(10),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        child: Text('₹ 1.04 *Lakhs ',
                            style: TextStyle(
                                color: colorD,
                                fontFamily: 'Montserrat',
                                fontSize: 18)),
                      ),
                      Positioned(
                        right: 10,
                        child: Text(
                          'onwards ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat2',
                              fontSize: 13),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 0,
                        child: Text(
                          'Ex Showroom Price ',
                          style: TextStyle(
                            color: colorC,
                            fontFamily: 'Montserrat',
                            fontSize: 7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          color: colorB,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.1',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_purple500_sharp,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        )),
                    const Icon(
                      Icons.bookmark,
                      color: colorC,
                    ),
                  ],
                ),
                Image.asset('assets/img/car.png'),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Mercedes-Benz ",
                    style: TextStyle(
                      fontFamily: 'Armstrong',
                      color: colorC,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "E-Class Cabriolet ",
                    style: TextStyle(
                      fontFamily: 'Armstrong',
                      color: colorD,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/img/seat belt icon.png',
                      height: 50,
                      color: colorC,
                    ),
                    const Column(
                      children: [
                        Text(
                          '5,7,9  ',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat2',
                              color: colorC),
                        ),
                        Text(
                          'Seater  ',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat2',
                              color: colorC),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/img/car_logo.png',
                      height: 100,
                    ),
                    const Text(
                      'NCAP NA*',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          color: colorC),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Image.asset(
                      'assets/img/Fuel Tank Capacity.png',
                      height: 20,
                    ),
                    const Column(
                      children: [
                        Text(
                          "Petrol",
                          style: TextStyle(
                              color: colorC,
                              fontFamily: 'Montserrat2',
                              fontSize: 12),
                        ),
                        Text(
                          "Petrol",
                          style: TextStyle(
                              color: colorC,
                              fontFamily: 'Montserrat2',
                              fontSize: 12),
                        ),
                        Text(
                          "Petrol",
                          style: TextStyle(
                              color: colorC,
                              fontFamily: 'Montserrat2',
                              fontSize: 12),
                        ),
                        Text(
                          "Petrol",
                          style: TextStyle(
                              color: colorC,
                              fontFamily: 'Montserrat2',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/img/manual-transmission.png',
                      height: 20,
                      color: colorC,
                    ),
                    const Column(
                      children: [
                        Text(
                          "Manual AMT",
                          maxLines: 3,
                          style: TextStyle(
                              color: colorC,
                              fontFamily: 'Montserrat2',
                              fontSize: 12),
                        ),
                        Text(
                          "Manual AMT",
                          maxLines: 3,
                          style: TextStyle(
                              color: colorC,
                              fontFamily: 'Montserrat2',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class ClipClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1264083, size.height * 0.1605333);
    path_0.lineTo(size.width * 0.1255667, size.height * 0.5844333);
    path_0.lineTo(size.width * 0.4974750, size.height * 0.5866500);
    path_0.lineTo(size.width * 0.6266667, size.height * 0.1616667);
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SecondClipClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2496917, size.height * 0.1560500);
    path_0.lineTo(size.width * 0.1255667, size.height * 0.5844333);
    path_0.lineTo(size.width * 0.4974750, size.height * 0.5866500);
    path_0.lineTo(size.width * 0.6266667, size.height * 0.1616667);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return false;
  }
}

class ToLoadMoreClipClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.1666667);
    path_0.lineTo(size.width * 0.6688250, size.height * 0.1644833);
    path_0.lineTo(size.width * 0.3769833, size.height * 0.5822167);
    path_0.lineTo(size.width * 0.9975000, size.height * 0.5816667);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CarsCompanies extends StatelessWidget {
  const CarsCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/img/bmw.png',
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'BMW',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/img/Mercedes.png',
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Mercedes',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/img/ford.png',
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'FORD',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/img/Volkswagen.png',
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Volkswagen',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/img/honda.png',
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'HONDA',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/img/Skoda.png',
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Skoda',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/img/audi.png',
              height: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'AUDI',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/img/Nissan.png',
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Nissan',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }
}

class FeaturedCars extends StatelessWidget {
  const FeaturedCars({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 137,
      child: Stack(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(138, 158, 158, 158),
            ),
          ),
          Positioned(
            top: 35,
            left: 30,
            child: RichText(
              text: const TextSpan(
                text: 'FEATURED ',
                style: TextStyle(
                    color: colorC, fontFamily: 'Armstrong', fontSize: 20),
                /*defining default style is optional */
                children: <TextSpan>[
                  TextSpan(
                      text: 'CARS',
                      style: TextStyle(fontFamily: 'Armstrong', color: colorD)),
                ],
              ),
            ),
          ),
          const Positioned(
              child: Divider(
            color: Colors.black,
            height: 140,
            indent: 32,
          )),
          Positioned(
            top: 50,
            left: 0,
            child: ClipPath(
              clipper: ClipClipper(),
              child: Container(
                height: 120,
                width: 250,
                color: const Color.fromRGBO(93, 92, 90, 1),
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 35),
                    child: const Text(
                      'POPULAR',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.white),
                    )),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 65,
            child: ClipPath(
              clipper: SecondClipClipper(),
              child: Container(
                height: 120,
                width: 300,
                color: const Color.fromRGBO(130, 130, 130, 1),
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 75, vertical: 35),
                    child: const Text(
                      'NEW',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.white),
                    )),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 128,
            child: ClipPath(
              clipper: SecondClipClipper(),
              child: Container(
                height: 120,
                width: 300,
                color: const Color.fromRGBO(175, 172, 173, 1),
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 65, vertical: 35),
                    child: const Text(
                      'UPCOMING',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                      ),
                    )),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 225,
            child: ClipPath(
              clipper: SecondClipClipper(),
              child: Container(
                height: 120,
                width: 300,
                color: const Color.fromRGBO(209, 209, 209, 1),
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 65, vertical: 35),
                    child: const Text(
                      'SAVED CARS',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoadMoreWidget extends StatelessWidget {
  const LoadMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: Stack(
          children: [
            const Divider(
              height: 110,
            ),
            Positioned(
              right: 0,
              child: ClipPath(
                clipper: ToLoadMoreClipClipper(),
                child: Container(
                  height: 95,
                  width: 270,
                  color: const Color.fromRGBO(130, 130, 130, 1),
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(170, 30, 0, 0),
                      child: const Positioned(
                        right: 10,
                        child: Text(
                          'LOAD MORE',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ));
  }
}

class DesertCarWidgetWithoutOpacitiy extends StatelessWidget {
  const DesertCarWidgetWithoutOpacitiy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 256,
      decoration: boxDicoration,
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: Stack(
              children: [
                Image.asset(
                  'assets/img/desert_car.jpg',
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/img/youtube.png',
                      height: 50,
                    )),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Thar is back',
                  style: TextStyle(fontFamily: 'Armstrong', color: colorC),
                )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'The Thar was first introduced in 2010 as a modernized version ',
                  style: TextStyle(
                      fontFamily: 'Montserrat2', color: colorC, fontSize: 11),
                )),
          )
        ],
      ),
    );
  }
}

class DesertCarWidgetWithOpacitiy extends StatelessWidget {
  const DesertCarWidgetWithOpacitiy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 256,
      decoration: boxDicoration,
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: Stack(
              children: [
                Image.asset(
                  'assets/img/desert_car.jpg',
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/img/youtube.png',
                      height: 50,
                    )),
                Container(
                  height: 350.0,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topLeft,
                          end: FractionalOffset.bottomRight,
                          colors: [
                            Color.fromRGBO(0, 0, 0, 0.80),
                            Color.fromRGBO(255, 153, 33, 0.30),
                          ],
                          stops: [
                            0.0,
                            1.0
                          ])),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Thar is back',
                  style: TextStyle(fontFamily: 'Armstrong', color: colorC),
                )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'The Thar was first introduced in 2010 as a modernized version ',
                  style: TextStyle(
                      fontFamily: 'Montserrat2', color: colorC, fontSize: 11),
                )),
          )
        ],
      ),
    );
  }
}


class YoutubeVideoslistviewWidget extends StatelessWidget {
  const YoutubeVideoslistviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 224,
            width: 56,
            color: colorD,
            child: const RotatedBox(
                quarterTurns: 3,
                child: Center(
                  child: Text(
                    'YOUTUBE VIDEOS',
                    style: TextStyle(
                        fontFamily: 'Armstrong',
                        color: Colors.white,
                        fontSize: 20),
                  ),
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          const DesertCarWidgetWithOpacitiy(),
          const SizedBox(
            width: 20,
          ),
          const DesertCarWidgetWithoutOpacitiy(),
          const SizedBox(
            width: 20,
          ),
          const DesertCarWidgetWithOpacitiy()
        ],
      ),
    );
  }
}

class CarCoparisonListViewWidget extends StatelessWidget {
  const CarCoparisonListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 280,
            width: 350,
            decoration: boxDicoration,
            child: Image.asset(
              'assets/img/SDDS.png',
              height: 170,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: 280,
            width: 350,
            decoration: boxDicoration,
            child: Image.asset(
              'assets/img/SDDS.png',
              height: 170,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: 280,
            width: 350,
            decoration: boxDicoration,
            child: Image.asset(
              'assets/img/SDDS.png',
              height: 170,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

class CarVideoWidget extends StatelessWidget {
  const CarVideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          Image.asset(
            "assets/img/331231.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'YouTube Creative',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Armstrong', fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/img/Play button arrowhead.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'About Us Video',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat2',
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SmoothPageIndicator(
                axisDirection: Axis.horizontal,
                controller: controller,
                count: 4,
                effect: const SlideEffect(
                    spacing: 8.0,
                    dotHeight: 6,
                    dotWidth: 6,
                    paintStyle: PaintingStyle.fill,
                    dotColor: Color.fromARGB(255, 255, 255, 255),
                    activeDotColor: Colors.red),
              )
            ],
          ),
          Container(
            height: 350.0,
            decoration: const BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter,
                    colors: [
                      Color.fromRGBO(2, 2, 2, 0.5),
                      Color.fromRGBO(2, 2, 2, 0),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ])),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/img/motor_octane.png',
                height: 40,
              )),
        ],
      ),
    );
  }
}

class TopPicksForYouListView extends StatelessWidget {
  const TopPicksForYouListView({super.key});

  @override
  Widget build(BuildContext context) {
    return               SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 10,),
                    const DesertCarWidgetWithoutOpacitiy(),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 240,
                      width: 256,
                      decoration: boxDicoration,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 170,
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/img/A225131_blog1.jpg',
                                  height: 170,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/img/youtube.png',
                                      height: 50,
                                    )),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Audi Luxury',
                                  style: TextStyle(
                                      fontFamily: 'Armstrong', color: colorC),
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'The Audi was first introduced in 2020 as a modernized version',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat2',
                                      color: colorC,
                                      fontSize: 11),
                                )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const DesertCarWidgetWithoutOpacitiy(),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              );
  }
}

class NewsUpdateListView extends StatelessWidget {
  const NewsUpdateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return               SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                        'assets/img/car_design_news_template_ppt_899594 2.jpg' ,),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                        'assets/img/car_design_news_template_ppt_899609 1.jpg'),
               const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              );
  }
}