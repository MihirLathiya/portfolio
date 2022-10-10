import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/constants.dart';
import 'package:flutter_portfolio_app/widgets/aboutMeText.dart';
import 'package:flutter_portfolio_app/widgets/communityIconBtn.dart';
import 'package:flutter_portfolio_app/widgets/toolsTech.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [50.0, 60.0, 30.0];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            "About Me",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          AboutMeText(
            textAlign: TextAlign.center,
            fontSize: 13,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < myCommunityLogo.length; i++)
                CommunityIconBtn(
                  icon: myCommunityLogo[i],
                  link: myCommunityLinks[i],
                  height: _communityLogoHeight[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.025,
          ),
          ToolsTech(),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     NavBarLogo(
          //       height: height * 0.04,
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
