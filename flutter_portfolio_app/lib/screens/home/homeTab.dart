import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/constants.dart';
import 'package:flutter_portfolio_app/widgets/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width < 740 ? -width * 0.2 : -width * 0.1,
            child: Opacity(
              opacity: 0.8,
              child: Image.asset('', height: height * 0.75),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WELCOME TO MY PORTFOLIO! ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.03, fontWeight: FontWeight.w300),
                    ),
                    Image.asset(
                      "assets/images/hi.gif",
                      height: height * 0.05,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Kevin",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.07, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Mangukiya",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.07,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.5),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: myPrimaryColor,
                    ),
                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200),
                        text: [
                          " Flutter Developer",
                          " hybrid App Devloper",
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < mySocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: mySocialIcons[i],
                        socialLink: mySocialLinks[i],
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
