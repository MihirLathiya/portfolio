import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/screens/experience/experiencedesktop.dart';
import 'package:flutter_portfolio_app/screens/experience/experiencemobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ExperienceMobile(),
      desktop: ExperienceDesktop(),
    );
  }
}
