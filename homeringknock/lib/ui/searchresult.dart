// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  String _selectedGender = 'Top Categories';

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.green)),
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
              SizedBox(
                height: 25,
              ),
              Expanded(
                flex: 5,
                child: Container(
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: ListTile(
                              trailing: Radio<String>(
                                activeColor: Color(0xff187949),
                                value: 'Top Categories',
                                groupValue: _selectedGender,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedGender = value!;
                                  });
                                },
                              ),
                              leading: Text('Top Categories',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff272727))),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 10,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 2.3,
                              ),
                              itemBuilder: (_, index) {
                                return GestureDetector(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 5, right: 5, bottom: 5, top: 5),
                                    child: Card(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                              color: Color(0xff9CCDB5),
                                            )),
                                        child: ListTile(
                                          leading: Text(
                                            "Hair",
                                            style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff272727)),
                                          ),
                                          trailing: Icon(
                                            Icons.fingerprint,
                                            color: Color(0xff187949),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(flex: 3, child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
