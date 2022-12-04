// ignore_for_file: prefer_const_constructors

import 'package:blood_donor/screen/donor_details.dart';
import 'package:flutter/material.dart';

import '../dimension/dimension.dart';
import '../utls/const.dart';

class ShowAllPage extends StatefulWidget {
  const ShowAllPage({super.key});

  @override
  State<ShowAllPage> createState() => _ShowAllPageState();
}

class _ShowAllPageState extends State<ShowAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        // automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(left: 0),
          child: Text(
            'All DONORS',
            style: TextStyle(fontSize: s16, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(s25),
        child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BloodDonorDetails(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(s16),
                        border: Border.all(color: kMainColor)),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenWidth / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(s10 * 6),
                                topLeft: Radius.circular(s16),
                                topRight: Radius.circular(s10 * 6),
                              ),
                              color: kMainColor.withOpacity(.15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(s16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Name'),
                                  SizedBox(height: s10),
                                  Text('Adress'),
                                  SizedBox(height: s10),
                                  Text('Phone No'),
                                  SizedBox(height: s10),
                                  Text('Date'),
                                  SizedBox(height: s10),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: s16, top: s16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: kMainColor,
                                borderRadius: BorderRadius.circular(s5),
                                // color: Colors.red,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: s10, horizontal: s20),
                              child: Text(
                                'A+',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(height: s25),
            itemCount: 10),
      ),
    );
  }
}
