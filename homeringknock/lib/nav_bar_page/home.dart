// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ui/searchresult.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  List<String> _carouselImages = [
    "https://www.colorhexa.com/c8ced9.png",
    "https://www.colorhexa.com/c8ced9.png",
    "https://www.colorhexa.com/c8ced9.png"
  ];
  var _dotPosition = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover",
                style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    color: Color(0xff2E2E2E)),
              ),
              Text(
                "Find the best one",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                    color: Color(0xff2E2E2E)),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.green)),
                  child: Container(
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 120,
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor: Colors.white,
                                  hintText: "Search ",
                                  hintStyle: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                      color: Color(0xffB7B7B7)),
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            width: 20,
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 50,
                            width: 120,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: TextFormField(
                                controller: locationController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor: Colors.white,
                                  hintText: "Location",
                                  prefix: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.location_pin,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                      color: Color(0xffB7B7B7)),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              color: Color(0xff187949),
                              height: 50,
                              width: 45,
                              child: Icon(
                                Icons.search,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 3,
                    child: CarouselSlider(
                        items: _carouselImages
                            .map((item) => Padding(
                                  padding:
                                      const EdgeInsets.only(left: 3, right: 3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(item),
                                            fit: BoxFit.fitWidth)),
                                  ),
                                ))
                            .toList(),
                        options: CarouselOptions(
                            autoPlay: false,
                            enlargeCenterPage: true,
                            viewportFraction: 1.2,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            onPageChanged: (val, carouselPageChangedReason) {
                              setState(() {
                                _dotPosition = val;
                              });
                            })),
                  ),
                  Positioned(
                    left: 50,
                    right: 50,
                    bottom: 5,
                    child: DotsIndicator(
                      dotsCount: _carouselImages.length == 0
                          ? 1
                          : _carouselImages.length,
                      position: _dotPosition.toDouble(),
                      decorator: DotsDecorator(
                        activeColor: Color(0xff187949),
                        color: Color(0xff174E31),
                        spacing: EdgeInsets.all(2),
                        activeSize: Size(8, 8),
                        size: Size(6, 6),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 20,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "order any service,Anytime",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff555957)),
                          ),
                          Text(
                            "We Provide High Quality",
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff555957),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Professional",
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff555957),
                                ),
                              ),
                              Text(
                                " Service",
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff187949),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Positioned(
                      left: 310,
                      top: 5,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/a2db/ea11/1db87c4614efa54373265ae109bf347a?Expires=1678665600&Signature=EfMJzPDGBr57IMplZ2GIZJjvYR8vlGZ3FQsYMYffKfuP3zubzc2NxNrBSb0BJxaexL591ceC2euz2pAIrjibqQwsGJbyC6cpFgZpIMYP4IwxlWg9cvL9QmWbmMur4yc0W42kypHCHxB1fnhWL2xdUHneBNcmO9qiF56Cad7kbzf40Z1NstVDGRAjXAtr9LwSs95YWbTyk0-G6PjuUvOj1b~otJEn4ETMEYxiIkhIYo~Dg~iuCYF~ftWpZTXHYsoQ6oV66wGVrIBUse9RaQx9WW3X-TAVJHWI4Ui8UF7ySLBqPShMPuYVvKMnkrKjPC4QR6t2sHtHiNen97~-9f9OIQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      )),
                  Positioned(
                      left: 240,
                      top: 15,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/a2db/ea11/1db87c4614efa54373265ae109bf347a?Expires=1678665600&Signature=EfMJzPDGBr57IMplZ2GIZJjvYR8vlGZ3FQsYMYffKfuP3zubzc2NxNrBSb0BJxaexL591ceC2euz2pAIrjibqQwsGJbyC6cpFgZpIMYP4IwxlWg9cvL9QmWbmMur4yc0W42kypHCHxB1fnhWL2xdUHneBNcmO9qiF56Cad7kbzf40Z1NstVDGRAjXAtr9LwSs95YWbTyk0-G6PjuUvOj1b~otJEn4ETMEYxiIkhIYo~Dg~iuCYF~ftWpZTXHYsoQ6oV66wGVrIBUse9RaQx9WW3X-TAVJHWI4Ui8UF7ySLBqPShMPuYVvKMnkrKjPC4QR6t2sHtHiNen97~-9f9OIQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      )),
                  Positioned(
                      left: 275,
                      top: 30,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/a2db/ea11/1db87c4614efa54373265ae109bf347a?Expires=1678665600&Signature=EfMJzPDGBr57IMplZ2GIZJjvYR8vlGZ3FQsYMYffKfuP3zubzc2NxNrBSb0BJxaexL591ceC2euz2pAIrjibqQwsGJbyC6cpFgZpIMYP4IwxlWg9cvL9QmWbmMur4yc0W42kypHCHxB1fnhWL2xdUHneBNcmO9qiF56Cad7kbzf40Z1NstVDGRAjXAtr9LwSs95YWbTyk0-G6PjuUvOj1b~otJEn4ETMEYxiIkhIYo~Dg~iuCYF~ftWpZTXHYsoQ6oV66wGVrIBUse9RaQx9WW3X-TAVJHWI4Ui8UF7ySLBqPShMPuYVvKMnkrKjPC4QR6t2sHtHiNen97~-9f9OIQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our Categories",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff555957),
                          letterSpacing: 1),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff187949),
                          letterSpacing: 1),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffD9F1E5),
                              radius: 25,
                              child: Icon(
                                Icons.face,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cleaning",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff555957),
                                  letterSpacing: 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fetured Service",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff555957),
                          letterSpacing: 1),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff187949),
                          letterSpacing: 1),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 2,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          child: Stack(
                            children: [
                              Card(
                                elevation: 0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AspectRatio(
                                        aspectRatio: 1.7,
                                        child: Container(
                                            child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://scontent.fdac148-1.fna.fbcdn.net/v/t39.30808-6/332718862_512532264390317_3081567241865663357_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG2prwZffd4M_wXnaU_QkVikvhQ-hl_5JuS-FD6GX_km1J8NslbQlwkBarlurSYlesP3WfSXG_zJtY8_U9o5g7U&_nc_ohc=5qjhOcsAqJ8AX_dn_Tg&_nc_ht=scontent.fdac148-1.fna&oh=00_AfCtqXn7K2vxMIVObMEoYViwB6uHDTBWLhNUpR7_YlrP8w&oe=63FF81AA",
                                            fit: BoxFit.cover,
                                          ),
                                        ))),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Commercial Cleaning",
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff272727),
                                                letterSpacing: 1),
                                          ),
                                          Text(
                                            "by expertise",
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff272727),
                                                letterSpacing: 1),
                                          ),
                                          Text(
                                            "200+ Company Work",
                                            style: GoogleFonts.roboto(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff848484),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Color(0xff187949),
                                              ),
                                              height: 20,
                                              width: 74,
                                              child: Center(
                                                  child: Text(
                                                "Post a job",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffFFFFFF),
                                                    letterSpacing: 1),
                                              )),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  right: 14,
                                  top: 14,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 25,
                                    color: Color(0xff187949),
                                  ))
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
