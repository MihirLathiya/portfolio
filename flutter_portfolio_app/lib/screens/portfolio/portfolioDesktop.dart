import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/animations/bottomAnimation.dart';
import 'package:flutter_portfolio_app/constants.dart';
import 'package:flutter_portfolio_app/widgets/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "\nPortfolio",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Here are few samples of my previous work :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.2,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.1,
                    backImage: myProjectsBanner[index],
                    projectIcon: myProjectsIcons[index],
                    projectTitle: myProjectsTitles[index],
                    projectDescription: myProjectsDescriptions[index],
                    projectLink: myProjectsLinks[index],
                    bottomWidget: Container(),
                  ),
                );
              },
              itemCount: 9,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          MaterialButton(
            hoverColor: myPrimaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: myPrimaryColor)),
            onPressed: () {
              launchURL("https://github.com/anotherwebguy");
            },
            child: Text(
              "See More",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
