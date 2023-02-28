// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Document extends StatefulWidget {
  const Document({super.key});

  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                borderSide:
                                    BorderSide(color: Color(0xff9CCDB5))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.0)),
                                borderSide:
                                    BorderSide(color: Color(0xff9CCDB5))),
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
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Real Time Services",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff555957),
                      letterSpacing: 1),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 20,
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
                                                "Book Now",
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
