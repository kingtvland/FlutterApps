// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final List<String> items = [
    'All Categories',
    'Most Popular',
    'Sub Categories',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: Color(0xff187949),
            )),
        title: Text(
          "Category",
          style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xff272727)),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/a2db/ea11/1db87c4614efa54373265ae109bf347a?Expires=1678665600&Signature=EfMJzPDGBr57IMplZ2GIZJjvYR8vlGZ3FQsYMYffKfuP3zubzc2NxNrBSb0BJxaexL591ceC2euz2pAIrjibqQwsGJbyC6cpFgZpIMYP4IwxlWg9cvL9QmWbmMur4yc0W42kypHCHxB1fnhWL2xdUHneBNcmO9qiF56Cad7kbzf40Z1NstVDGRAjXAtr9LwSs95YWbTyk0-G6PjuUvOj1b~otJEn4ETMEYxiIkhIYo~Dg~iuCYF~ftWpZTXHYsoQ6oV66wGVrIBUse9RaQx9WW3X-TAVJHWI4Ui8UF7ySLBqPShMPuYVvKMnkrKjPC4QR6t2sHtHiNen97~-9f9OIQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, bottom: 10, right: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'Sub Categories',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: Color(0xffF2F2F2),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              color: Color(0xffF2F2F2),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                iconSize: 14,
                iconEnabledColor: Color(0xffF2F2F2),
                iconDisabledColor: Colors.grey,
                buttonHeight: 36,
                buttonWidth: 207,
                buttonPadding: EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xff187949),
                ),
                buttonElevation: 2,
                itemHeight: 40,
                itemPadding: EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: 200,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xff187949),
                ),
                dropdownElevation: 8,
                scrollbarRadius: Radius.circular(4),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: Offset(-20, 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(color: Color(0xff9CCDB5))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide(color: Color(0xff9CCDB5))),
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
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 6,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Container(
                        color: Color(0xffFFFFFF),
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 94,
                        width: 376,
                        child: Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Color(0xffE8F2ED),
                              child: Icon(
                                Icons.face,
                                color: Color(0xff187949),
                              ),
                            ),
                            title: Text(
                              "Business",
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff187949)),
                            ),
                            subtitle: Text(
                              "100+ sub categories \n 400+ company work",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff424242)),
                            ),
                            trailing: InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Color(0xff187949),
                                ),
                                height: 30,
                                width: 55,
                                child: Center(
                                    child: Text(
                                  "view",
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                      letterSpacing: 1),
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 20),
            )
          ],
        ),
      ),
    ));
  }
}
