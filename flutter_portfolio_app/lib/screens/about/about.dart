import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/screens/about/desktopAbout.dart';
import 'package:flutter_portfolio_app/screens/about/mobileAbout.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'tabAbout.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      tablet: AboutTab(),
      desktop: AboutDesktop(),
    );
  }
}
