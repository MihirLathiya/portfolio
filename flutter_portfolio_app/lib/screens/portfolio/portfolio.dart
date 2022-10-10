import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/screens/portfolio/portfolioDesktop.dart';
import 'package:flutter_portfolio_app/screens/portfolio/portfolioMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
