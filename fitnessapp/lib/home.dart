import 'dart:convert';
import 'package:fitnessapp/mode/exercisemodeldata.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String link =
      "https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json?fbclid=IwAR2gsu4SRvRRFkHK8JPTWHZXmaNP0dtpOG6h7ep4zQp7WaamX5S1UaSrc3A";

  List<ExerciseModel> allData = [];
  late ExerciseModel exercise;
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  bool isLoading = false;
  fetchData() async {
    try {
      setState(() {
        isLoading = true;
      });
      var responce = await http.get(Uri.parse(link));
      print("Our response is: ${responce.statusCode}");
      if (responce.statusCode == 200) {
        var data = jsonDecode(responce.body);
        for (var i in data["exercises"]) {
          exercise = ExerciseModel(
              id: i["id"],
              title: i["title"],
              thumbnil: i["thumbnail"],
              seconds: i["seconds"]);
          setState(() {
            allData.add(exercise);
          });
        }
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading == true,
      blur: 0.5,
      opacity: 0.5,
      progressIndicator: CircularProgressIndicator(),
      child: Scaffold(
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: allData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "${allData[index].title}",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              );
            }),
      ),
    );
  }
}
