import 'package:flutter/material.dart';
// import 'package:steps/steps.dart';

class ExperiencesMobile extends StatelessWidget {
  const ExperiencesMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: MediaQuery.of(context).size.height * 0.81,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter,
      // child: Steps(
      //   direction: Axis.vertical,
      //   size: 20.0,
      //   path: {'color': Colors.lightBlue.shade200, 'width': 2.75},
      //   steps: [
      //     {
      //       'color': Color(0xff64FFDA),
      //       'background': Colors.indigo,
      //       'label': '👷🏻‍♀️',
      //       'content': Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: <Widget>[
      //           Text(
      //             "Divine Infosoft",
      //             style: TextStyle(
      //               fontSize: 22.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.w700,
      //             ),
      //           ),
      //           SizedBox(
      //             height: 6.0,
      //           ),
      //           Text(
      //             "Marketing Manager\n" +
      //                 "Digital Marketing Using Facebook\n" +
      //                 "Android Devloper\n" +
      //                 "Part Time Job\n" +
      //                 "2017-2019",
      //             style: TextStyle(
      //               fontSize: 13.0,
      //               color: Color(0xffCCD6F6).withOpacity(0.5),
      //               fontWeight: FontWeight.w500,
      //             ),
      //           ),
      //         ],
      //       ),
      //     },
      //     {
      //       'color': Color(0xff64FFDA),
      //       'background': Colors.indigo,
      //       'label': '🌟',
      //       'content': Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: <Widget>[
      //           Text(
      //             "Codeline Infotech",
      //             style: TextStyle(
      //               fontSize: 22.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.w700,
      //             ),
      //           ),
      //           SizedBox(
      //             height: 6.0,
      //           ),
      //           Text(
      //             "Flutter Devloper\n" +
      //                 "As a Intern at Innovatiive Creators my job is to work with team to develop Android and Ios Applications in Flutter for the clients that contact the company.\nI work closely  with the other team members in such tasks as developing, contributing, troubleshooting and debugging.\n",
      //             style: TextStyle(
      //               fontSize: 13.0,
      //               color: Color(0xffCCD6F6).withOpacity(0.5),
      //               fontWeight: FontWeight.w500,
      //             ),
      //           ),
      //           Text(
      //             "2022 Present ",
      //             style: TextStyle(
      //               fontSize: 12.0,
      //               color: Color(0xffCCD6F6).withOpacity(0.5),
      //               fontWeight: FontWeight.w500,
      //             ),
      //           ),
      //         ],
      //       ),
      //     },
      //   ],
      // ),
    );
  }
}
