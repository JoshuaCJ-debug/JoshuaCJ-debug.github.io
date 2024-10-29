import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Align(
        alignment: Alignment(0.0, 0.2),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          child: SingleChildScrollView( // Make the column scrollable
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Bonobo",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: MediaQuery.of(context).size.width * 0.075, // 7.5% of screen width
                        color: Color(0xff0bb026),
                      ),
                    ),
                    Text(
                      "App",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: MediaQuery.of(context).size.width * 0.075, // 7.5% of screen width
                        color: Color(0xff077ffc),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 16),
                  child: Text(
                    "Welcome to Bonobo App",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // 4% of screen width
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Text(
                  "Your trusted wellness companion. "
                  "Our expert-backed algorithm delivers customized diet plans, "
                  "tracking and meal solutions "
                  "to empower your journey to a healthier you!",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: MediaQuery.of(context).size.width * 0.02, // 2% of screen width
                    color: Color(0xff746f6f),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
                  child: Align(
                    alignment: Alignment(0.2, 0.0),
                    child: Image(
                      image: AssetImage("assets/images/MEAL2.png"),
                      height: MediaQuery.of(context).size.height * 0.25, // 25% of screen height
                      width: MediaQuery.of(context).size.width * 0.25, // 25% of screen width
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 2, 5, 5),
                  child: Center( // Center the button
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/userdetails');
                      },
                      color: Color(0xff5877FD),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        side: BorderSide(color: Color(0xff3a57e8), width: 1),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Get started",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.035, // 3.5% of screen width
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      textColor: Color(0xffffffff),
                      height: MediaQuery.of(context).size.height * 0.06, // 6% of screen height
                      minWidth: MediaQuery.of(context).size.width * 0.6, // Set width to 60% of the screen
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
