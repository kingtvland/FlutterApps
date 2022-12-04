// ignore_for_file: prefer_const_constructors

import 'package:blood_donor/dimension/dimension.dart';
import 'package:blood_donor/screen/edit_donor_details_page.dart';
import 'package:blood_donor/screen/show_all_page.dart';
import 'package:blood_donor/screen/widget/custom_button.dart';
import 'package:blood_donor/utls/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: s25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              // centerTitle: true,
              title: Padding(
                padding: EdgeInsets.only(left: s10),
                child: Text(
                  'JOHAR TOWN, LAHORE',
                  style: TextStyle(fontSize: s16, fontWeight: FontWeight.w400),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: s25),
                  child: Container(
                      padding: EdgeInsets.all(s5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.person,
                        color: Colors.red,
                      )),
                )
              ],
            ),
            Image.asset(
              map,
              fit: BoxFit.cover,
              height: screenHeight / 1.6,
              width: double.infinity,
            ),
            // SizedBox(height: s5),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: s25, vertical: s25),
                child: const Text('Blood Group')),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: s25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      bloodGroup.length,
                      (index) => InkWell(
                            onTap: () {
                              x = index;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: index == x ? kMainColor : Colors.white,
                                border: Border.all(
                                    color: index == x
                                        ? Colors.transparent
                                        : kMainColor),
                                borderRadius: BorderRadius.circular(s5),
                                // color: Colors.red,
                              ),
                              margin: EdgeInsets.only(right: s10),
                              padding: EdgeInsets.symmetric(
                                  vertical: s10, horizontal: s20),
                              child: Text(
                                bloodGroup[index],
                                style: TextStyle(
                                    color:
                                        index == x ? Colors.white : Colors.red),
                              ),
                            ),
                          )),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: s25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Show All',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShowAllPage(),
                            ));
                      },
                    ),
                  ),
                  SizedBox(width: s20),
                  Expanded(
                    child: CustomButton(
                      color: Colors.transparent,
                      tclr: kMainColor,
                      bclr: kMainColor,
                      text: 'Add New Donar',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditDonorDetails(),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  int x = 0;
  List<String> bloodGroup = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
    'ALL'
  ];
}
