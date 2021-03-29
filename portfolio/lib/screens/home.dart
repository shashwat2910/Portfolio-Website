import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hovering/hovering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 25,
              width: 25,
              child: SvgPicture.asset("son.svg"),
            ),
            SizedBox(
              width: 5,
            ),
            HoverButton(
              onpressed: null,
              child: Text(
                "About Me",
                style: GoogleFonts.mcLaren(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Container(
              height: 25,
              width: 25,
              child: SvgPicture.asset("project.svg"),
            ),
            SizedBox(
              width: 5,
            ),
            HoverButton(
              onpressed: null,
              child: Text(
                "Projects",
                style: GoogleFonts.mcLaren(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 200),
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage("me.jpeg"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Shashwat Sharma",
                  style: GoogleFonts.dancingScript(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Flutter.Cricket.Football.Music.\n Likes Travelling..",
                  style: GoogleFonts.indieFlower(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("github.svg"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    HoverButton(
                      onpressed: null,
                      child: RichText(
                        text: new TextSpan(
                          text: "Github",
                          style: GoogleFonts.mcLaren(
                              color: Colors.white, fontSize: 20),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launch("https://github.com/shashwat2910");
                            },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("linkedin.svg"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    HoverButton(
                      onpressed: null,
                      child: RichText(
                        text: new TextSpan(
                          text: "LinkedIn",
                          style: GoogleFonts.mcLaren(
                              color: Colors.white, fontSize: 20),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  "https://www.linkedin.com/in/shashwat-sharma-79221218a/");
                            },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("twitter.svg"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    HoverButton(
                      onpressed: null,
                      child: RichText(
                        text: new TextSpan(
                          text: "Twitter",
                          style: GoogleFonts.mcLaren(
                              color: Colors.white, fontSize: 20),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launch("https://twitter.com/prada_shawarma_");
                            },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("facebook.svg"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    HoverButton(
                      onpressed: null,
                      child: RichText(
                        text: new TextSpan(
                          text: "Facebook",
                          style: GoogleFonts.mcLaren(
                              color: Colors.white, fontSize: 20),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  "https://www.facebook.com/shashwat.sharma.100046/");
                            },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("instagram.svg"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    HoverButton(
                      onpressed: null,
                      child: RichText(
                        text: new TextSpan(
                          text: "Instagram",
                          style: GoogleFonts.mcLaren(
                              color: Colors.white, fontSize: 20),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launch(
                                  "https://www.instagram.com/oreo_shawarma_/");
                            },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
