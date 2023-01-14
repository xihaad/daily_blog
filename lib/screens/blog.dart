import 'package:daily_blog/screens/profile.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final buttonP = Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(20),
      color: Colors.lightBlue,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // minWidth: MediaQuery.of(context).size.width,
        minWidth: 30,
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile()));
        },
        child: Text(
          "My Profile",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("My Blog"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 120,
                child: Image.asset(
                  "assets/flutter.png",
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "Daily Blog about Creating a Flutter Project!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Day One: Today I am starting a project to create a Flutter app. I am excited to get started and learn something new! First, I am going to do some research on Flutter and familiarize myself with the platform. I will also look into some tutorials and existing projects to see what I can learn and start to get an idea of what I want to create. ",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Day Two: Today I am going to start setting up my project. I will be using Android Studio and I will be sure to install all of the necessary Flutter and Dart plugins. I will also create my projects directory and files to get everything ready. I am looking forward to starting to code and create something from the ground up!  ",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),

              Text(
                "Day Three: Today I am going to dive into the coding aspect of my project. I am going to start with the basics and create the main.dart file. This is where I will write the code for the main page of my app. I will also start to build the user interface and design the look of the app. I am excited to see what I can create! ",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),
              buttonP,
              SizedBox(
                height: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
